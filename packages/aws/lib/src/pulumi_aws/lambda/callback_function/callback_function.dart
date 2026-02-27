import 'package:pulumi/pulumi.dart';
import '../function_capacity_provider_config/function_capacity_provider_config.dart';
import '../function_dead_letter_config/function_dead_letter_config.dart';
import '../function_durable_config/function_durable_config.dart';
import '../function_environment/function_environment.dart';
import '../function_ephemeral_storage/function_ephemeral_storage.dart';
import '../function_file_system_config/function_file_system_config.dart';
import '../function_image_config/function_image_config.dart';
import '../function_logging_config/function_logging_config.dart';
import '../function_snap_start/function_snap_start.dart';
import '../function_tenancy_config/function_tenancy_config.dart';
import '../function_tracing_config/function_tracing_config.dart';
import '../function_vpc_config/function_vpc_config.dart';
import 'callback_function_args.dart';

/// A CallbackFunction is a special type of `aws.lambda.Function` that can be created out of an actual JavaScript function instance. The Pulumi compiler and runtime work in tandem to extract your function, package it up along with its dependencies, upload the package to AWS Lambda, and configure the resulting AWS Lambda resources automatically.
///
/// The JavaScript function may capture references to other variables in the surrounding code, including other resources and even imported modules. The Pulumi compiler figures out how to serialize the resulting closure as it uploads and configures the AWS Lambda. This works even if you are composing multiple functions together.
///
/// See [Function Serialization](https://www.pulumi.com/docs/concepts/inputs-outputs/function-serialization/) for additional details on this process.
///
/// ### Lambda Function Handler
///
/// You can provide the JavaScript function used for the Lambda Function's Handler either directly by setting the `callback` input property or instead specify the `callbackFactory`, which is a Javascript function that will be called to produce the callback function that is the entrypoint for the AWS Lambda.
/// Using `callbackFactory` is useful when there is expensive initialization work that should only be executed once. The factory-function will be invoked once when the final AWS Lambda module is loaded. It can run whatever code it needs, and will end by returning the actual function that Lambda will call into each time the Lambda is invoked.
///
/// It is recommended to use an async function, otherwise the Lambda execution will run until the `callback` parameter is called and the event loop is empty. See [Define Lambda function handler in Node.js](https://docs.aws.amazon.com/lambda/latest/dg/nodejs-handler.html) for additional details.
///
/// ### Lambda Function Permissions
///
/// If neither `role` nor `policies` is specified, `CallbackFunction` will create an IAM role and automatically use the following managed policies:
/// - `AWSLambda_FullAccess`
/// - `CloudWatchFullAccessV2`
/// - `CloudWatchEventsFullAccess`
/// - `AmazonS3FullAccess`
/// - `AmazonDynamoDBFullAccess`
/// - `AmazonSQSFullAccess`
/// - `AmazonKinesisFullAccess`
/// - `AWSCloudFormationReadOnlyAccess`
/// - `AmazonCognitoPowerUser`
/// - `AWSXrayWriteOnlyAccess`
///
/// ### Customizing Lambda function attributes
///
/// The Lambdas created by `aws.lambda.CallbackFunction` use reasonable defaults for CPU, memory, IAM, logging, and other configuration.
/// Should you need to customize these settings, the `aws.lambda.CallbackFunction` resource offers all of the underlying AWS Lambda settings.
///
/// For example, to increase the RAM available to your function to 256MB:
///
/// ```typescript
/// import * as aws from "@pulumi/aws";
///
/// // Create an AWS Lambda function with 256MB RAM
/// const lambda = new aws.lambda.CallbackFunction("docsHandlerFunc", {
/// callback: async(event: aws.s3.BucketEvent) => {
/// // ...
/// },
///
/// memorySize: 256 /* MB */,
/// });
/// ```
///
/// ### Adding/removing files from a function bundle
///
/// Occasionally you may need to customize the contents of function bundle before uploading it to AWS Lambda --- for example, to remove unneeded Node.js modules or add certain files or folders to the bundle explicitly. The `codePathOptions` property of `CallbackFunction` allows you to do this.
///
/// In this example, a local directory `./config` is added to the function bundle, while an unneeded Node.js module `mime` is removed:
///
/// ```typescript
/// import * as aws from "@pulumi/aws";
/// import * as fs from "fs";
///
/// const lambda = new aws.lambda.CallbackFunction("docsHandlerFunc", {
/// callback: async(event: aws.s3.BucketEvent) => {
/// // ...
/// },
///
/// codePathOptions: {
///
/// // Add local files or folders to the Lambda function bundle.
/// extraIncludePaths: [
/// "./config",
/// ],
///
/// // Remove unneeded Node.js packages from the bundle.
/// extraExcludePackages: [
/// "mime",
/// ],
/// },
/// });
/// ```
///
/// ### Using Lambda layers {#lambda-layers}
///
/// [Lambda layers](https://docs.aws.amazon.com/lambda/latest/dg/chapter-layers.html) allow you to share code, configuration, and other assets across multiple Lambda functions. At runtime, AWS Lambda extracts these files into the function's filesystem, where you can access their contents as though they belonged to the function bundle itself.
///
/// Layers are managed with the [`aws.lambda.LayerVersion`](/registry/packages/aws/api-docs/lambda/layerversion/) resource, and you can attach them to as many `lambda.Function` or `lambda.CallbackFunction` resources as you need using the function's `layers` property. Here, the preceding program is updated to package the `./config` folder as a Lambda layer instead:
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as fs from "fs";
///
/// // Create a Lambda layer containing some shared configuration.
/// const configLayer = new aws.lambda.LayerVersion("config-layer", {
/// layerName: "my-config-layer",
///
/// // Use a Pulumi AssetArchive to zip up the contents of the folder.
/// code: new pulumi.asset.AssetArchive({
/// "config": new pulumi.asset.FileArchive("./config"),
/// }),
/// });
///
/// const lambda = new aws.lambda.CallbackFunction("docsHandlerFunc", {
/// callback: async(event: aws.s3.BucketEvent) => {
/// // ...
/// },
///
/// // Attach the config layer to the function.
/// layers: [
/// configLayer.arn,
/// ],
/// });
/// ```
///
/// Notice the path to the file is now `/opt/config/config.json` --- `/opt` being the path at which AWS Lambda extracts the contents of a layer. The configuration layer is now manageable and deployable independently of the Lambda itself, allowing changes to be applied immediately across all functions that use it.
///
/// #### Using layers for Node.js dependencies
///
/// This same approach can be used for sharing Node.js module dependencies. When you package your dependencies [at the proper path](https://docs.aws.amazon.com/lambda/latest/dg/packaging-layers.html) within the layer zip file, (e.g., `nodejs/node_modules`), AWS Lambda will unpack and expose them automatically to the functions that use them at runtime. This approach can be useful in monorepo scenarios such as the example below, which adds a locally built Node.js module as a layer, then references references the module from within the body of a `CallbackFunction`:
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Create a layer containing a locally built Node.js module.
/// const utilsLayer = new aws.lambda.LayerVersion("utils-layer", {
/// layerName: "utils",
/// code: new pulumi.asset.AssetArchive({
///
/// // Store the module under nodejs/node_modules to make it available
/// // on the Node.js module path.
/// "nodejs/node_modules/@my-alias/utils": new pulumi.asset.FileArchive("./layers/utils/dist"),
/// }),
/// });
///
/// const lambda =  new aws.lambda.CallbackFunction("docsHandlerFunc", {
/// callback: async (event: aws.s3.BucketEvent) => {
///
/// // Import the module from the layer at runtime.
/// const { sayHello } = await import("@my-alias/utils");
///
/// // Call a function from the utils module.
/// console.log(sayHello());
/// },
///
/// // Attach the utils layer to the function.
/// layers: [
/// utilsLayer.arn,
/// ],
/// });
/// ```
///
/// Notice the example uses the module name `@my-alias/utils`. To make this work, you'll need to add a few lines to your Pulumi project's `tsconfig.json` file to map your chosen module name to the path of the module's TypeScript source code:
///
/// ```javascript
/// {
/// "compilerOptions": {
/// // ...
/// "baseUrl": ".",
/// "paths": {
/// "@my-alias/utils": [
/// "./layers/utils"
/// ]
/// }
/// },
/// // ...
/// }
/// ```
///
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Basic Lambda Function
///
/// ```typescript
/// import * as aws from "@pulumi/aws";
///
/// // Create an AWS Lambda function that fetches the Pulumi website and returns the HTTP status
/// const lambda = new aws.lambda.CallbackFunction("fetcher", {
/// callback: async(event) => {
/// try {
/// const res = await fetch("https://www.pulumi.com/robots.txt");
/// console.info("status", res.status);
/// return res.status;
/// }
/// catch (e) {
/// console.error(e);
/// return 500;
/// }
/// },
/// });
/// ```
/// {{% /example %}}
///
/// {{% example %}}
/// ### Lambda Function with expensive initialization work
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as express from "express";
/// import * as serverlessExpress from "aws-serverless-express";
/// import * as middleware from "aws-serverless-express/middleware";
///
/// const lambda = new aws.lambda.CallbackFunction<any, any>("mylambda", {
/// callbackFactory: () => {
/// const app = express();
/// app.use(middleware.eventContext());
/// let ctx;
///
/// app.get("/", (req, res) => {
/// console.log("Invoked url: " + req.url);
///
/// fetch('https://www.pulumi.com/robots.txt').then(resp => {
/// res.json({
/// message: "Hello, world!\n\nSucceeded with " + ctx.getRemainingTimeInMillis() + "ms remaining.",
/// fetchStatus: resp.status,
/// fetched: resp.text(),
/// });
/// });
/// });
///
/// const server = serverlessExpress.createServer(app);
/// return (event, context) => {
/// console.log("Lambda invoked");
/// console.log("Invoked function: " + context.invokedFunctionArn);
/// console.log("Proxying to express");
/// ctx = context;
/// serverlessExpress.proxy(server, event, <any>context);
/// }
/// }
/// });
/// ```
/// {{% /example %}}
///
/// {{% example %}}
/// ### API Gateway Handler Function
/// ```typescript
/// import * as apigateway from "@pulumi/aws-apigateway";
/// import { APIGatewayProxyEvent, Context } from "aws-lambda";
///
/// const api = new apigateway.RestAPI("api", {
/// routes: [
/// {
/// path: "/api",
/// eventHandler: async (event: APIGatewayProxyEvent, context: Context) => {
/// return {
/// statusCode: 200,
/// body: JSON.stringify({
/// eventPath: event.path,
/// functionName: context.functionName,
/// })
/// };
/// },
/// },
/// ],
/// });
///
/// export const url = api.url;
/// ```
/// {{% /example %}}
/// {{% /examples %}}
class CallbackFunction extends CustomResource {
  /// Instruction set architecture for your Lambda function. Valid values are `["x86_64"]` and `["arm64"]`. Default is `["x86_64"]`. Removing this attribute, function's architecture stays the same.
  late final Output<List<String>?> architectures;

  /// ARN identifying your Lambda Function.
  late final Output<String?> arn;

  /// Configuration block for Lambda Capacity Provider. See below.
  late final Output<FunctionCapacityProviderConfig?> capacityProviderConfig;

  /// Path to the function's deployment package within the local filesystem. Conflicts with `image_uri` and `s3_bucket`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  late final Output<dynamic> code;

  /// Base64-encoded representation the source code package file. Use this argument to trigger updates when the function source code changes. For OCI, this value is relayed directly from the image digest. For zip files, this value is the Base64 encoded SHA-256 hash of the `.zip` file. Layers are not included in the calculation. To trigger updates using a non-standard hashing algorithm, use the `source_code_hash` argument instead.
  late final Output<String?> codeSha256;

  /// ARN of a code-signing configuration to enable code signing for this function.
  late final Output<String?> codeSigningConfigArn;

  /// Configuration block for dead letter queue. See below.
  late final Output<FunctionDeadLetterConfig?> deadLetterConfig;

  /// Description of what your Lambda Function does.
  late final Output<String?> description;

  /// Configuration block for durable function settings. See below. `durable_config` may only be available in [limited regions](https://builder.aws.com/build/capabilities), including `us-east-2`.
  late final Output<FunctionDurableConfig?> durableConfig;

  /// Configuration block for environment variables. See below.
  late final Output<FunctionEnvironment?> environment;

  /// Amount of ephemeral storage (`/tmp`) to allocate for the Lambda Function. See below.
  late final Output<FunctionEphemeralStorage?> ephemeralStorage;

  /// Configuration block for EFS file system. See below.
  late final Output<FunctionFileSystemConfig?> fileSystemConfig;

  /// Function entry point in your code. Required if `package_type` is `Zip`.
  late final Output<String?> handler;

  /// Container image configuration values. See below.
  late final Output<FunctionImageConfig?> imageConfig;

  /// ECR image URI containing the function's deployment package. Conflicts with `filename` and `s3_bucket`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  late final Output<String?> imageUri;

  /// ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  late final Output<String?> invokeArn;

  /// ARN of the AWS Key Management Service key used to encrypt environment variables. If not provided when environment variables are in use, AWS Lambda uses a default service key. If provided when environment variables are not in use, the AWS Lambda API does not save this configuration.
  late final Output<String?> kmsKeyArn;

  /// Date this resource was last modified.
  late final Output<String?> lastModified;

  /// List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function.
  late final Output<List<String>?> layers;

  /// Configuration block for advanced logging settings. See below.
  late final Output<FunctionLoggingConfig?> loggingConfig;

  /// Amount of memory in MB your Lambda Function can use at runtime. Valid value between 128 MB to 32,768 MB (32 GB), in 1 MB increments. Defaults to 128.
  late final Output<int?> memorySize;

  /// Unique name for your Lambda Function.
  late final Output<String?> name;

  /// Lambda deployment package type. Valid values are `Zip` and `Image`. Defaults to `Zip`.
  late final Output<String?> packageType;

  /// Whether to publish creation/change as new Lambda Function Version. Defaults to `false`.
  late final Output<bool?> publish;

  /// Whether to publish to a alias or version number. Omit for regular version publishing. Option is `LATEST_PUBLISHED`.
  late final Output<String?> publishTo;

  /// ARN identifying your Lambda Function Version (if versioning is enabled via `publish = true`).
  late final Output<String?> qualifiedArn;

  /// Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  late final Output<String?> qualifiedInvokeArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String?> region;

  /// Whether to replace the security groups on the function's VPC configuration prior to destruction. Default is `false`.
  late final Output<bool?> replaceSecurityGroupsOnDestroy;

  /// List of security group IDs to assign to the function's VPC configuration prior to destruction. Required if `replace_security_groups_on_destroy` is `true`.
  late final Output<List<String>?> replacementSecurityGroupIds;

  /// Amount of reserved concurrent executions for this lambda function. A value of `0` disables lambda from being triggered and `-1` removes any concurrency limitations. Defaults to Unreserved Concurrency Limits `-1`.
  late final Output<int?> reservedConcurrentExecutions;

  /// ARN to be used for invoking Lambda Function from API Gateway with response streaming - to be used in `aws.apigateway.Integration`'s `uri`.
  late final Output<String?> responseStreamingInvokeArn;

  /// ARN of the function's execution role. The role provides the function's identity and access to AWS services and resources.
  ///
  /// The following arguments are optional:
  late final Output<String?> role;

  /// The IAM role assigned to this Lambda function. Will be undefined if an ARN was provided for the role input property.
  late final Output<String?> roleInstance;

  /// Identifier of the function's runtime. Required if `package_type` is `Zip`. See [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime) for valid values.
  late final Output<String?> runtime;

  /// S3 bucket location containing the function's deployment package. Conflicts with `filename` and `image_uri`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  late final Output<String?> s3Bucket;

  /// S3 key of an object containing the function's deployment package. Required if `s3_bucket` is set.
  late final Output<String?> s3Key;

  /// Object version containing the function's deployment package. Conflicts with `filename` and `image_uri`.
  late final Output<String?> s3ObjectVersion;

  /// ARN of the signing job.
  late final Output<String?> signingJobArn;

  /// ARN of the signing profile version.
  late final Output<String?> signingProfileVersionArn;

  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`.
  late final Output<bool?> skipDestroy;

  /// Configuration block for snap start settings. See below.
  late final Output<FunctionSnapStart?> snapStart;

  /// User-defined hash of the source code package file. Use this argument to trigger updates when the local function source code changes. This is a synthetic argument tracked only by the AWS provider and does not need to match the hashing algorithm used by Lambda to compute the `CodeSha256` response value. Out-of-band changes to the source code _will not_ be captured by this argument. To include out-of-band source code changes as an update trigger, use the `code_sha256` argument instead.
  late final Output<String?> sourceCodeHash;

  /// Size in bytes of the function .zip file.
  late final Output<int?> sourceCodeSize;

  /// ARN of the AWS Key Management Service key used to encrypt the function's `.zip` deployment package. Conflicts with `image_uri`.
  late final Output<String?> sourceKmsKeyArn;

  /// Key-value map of tags for the Lambda function. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>?> tagsAll;

  /// Configuration block for Tenancy. See below.
  late final Output<FunctionTenancyConfig?> tenancyConfig;

  /// Amount of time your Lambda Function has to run in seconds. Defaults to 3. Valid between 1 and 900.
  late final Output<int?> timeout;

  /// Configuration block for X-Ray tracing. See below.
  late final Output<FunctionTracingConfig?> tracingConfig;

  /// Latest published version of your Lambda Function.
  late final Output<String?> version;

  /// Configuration block for VPC. See below.
  late final Output<FunctionVpcConfig?> vpcConfig;

  CallbackFunction(
    String name, {
    CallbackFunctionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lambda/callbackFunction:CallbackFunction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.architectures = registerOutput<List<String>?>('architectures');
    this.arn = registerOutput<String?>('arn');
    this.capacityProviderConfig =
        registerOutput<FunctionCapacityProviderConfig?>(
            'capacityProviderConfig');
    this.code = registerOutput<dynamic>('code');
    this.codeSha256 = registerOutput<String?>('codeSha256');
    this.codeSigningConfigArn = registerOutput<String?>('codeSigningConfigArn');
    this.deadLetterConfig =
        registerOutput<FunctionDeadLetterConfig?>('deadLetterConfig');
    this.description = registerOutput<String?>('description');
    this.durableConfig =
        registerOutput<FunctionDurableConfig?>('durableConfig');
    this.environment = registerOutput<FunctionEnvironment?>('environment');
    this.ephemeralStorage =
        registerOutput<FunctionEphemeralStorage?>('ephemeralStorage');
    this.fileSystemConfig =
        registerOutput<FunctionFileSystemConfig?>('fileSystemConfig');
    this.handler = registerOutput<String?>('handler');
    this.imageConfig = registerOutput<FunctionImageConfig?>('imageConfig');
    this.imageUri = registerOutput<String?>('imageUri');
    this.invokeArn = registerOutput<String?>('invokeArn');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.lastModified = registerOutput<String?>('lastModified');
    this.layers = registerOutput<List<String>?>('layers');
    this.loggingConfig =
        registerOutput<FunctionLoggingConfig?>('loggingConfig');
    this.memorySize = registerOutput<int?>('memorySize');
    this.name = registerOutput<String?>('name');
    this.packageType = registerOutput<String?>('packageType');
    this.publish = registerOutput<bool?>('publish');
    this.publishTo = registerOutput<String?>('publishTo');
    this.qualifiedArn = registerOutput<String?>('qualifiedArn');
    this.qualifiedInvokeArn = registerOutput<String?>('qualifiedInvokeArn');
    this.region = registerOutput<String?>('region');
    this.replaceSecurityGroupsOnDestroy =
        registerOutput<bool?>('replaceSecurityGroupsOnDestroy');
    this.replacementSecurityGroupIds =
        registerOutput<List<String>?>('replacementSecurityGroupIds');
    this.reservedConcurrentExecutions =
        registerOutput<int?>('reservedConcurrentExecutions');
    this.responseStreamingInvokeArn =
        registerOutput<String?>('responseStreamingInvokeArn');
    this.role = registerOutput<String?>('role');
    this.roleInstance = registerOutput<String?>('roleInstance');
    this.runtime = registerOutput<String?>('runtime');
    this.s3Bucket = registerOutput<String?>('s3Bucket');
    this.s3Key = registerOutput<String?>('s3Key');
    this.s3ObjectVersion = registerOutput<String?>('s3ObjectVersion');
    this.signingJobArn = registerOutput<String?>('signingJobArn');
    this.signingProfileVersionArn =
        registerOutput<String?>('signingProfileVersionArn');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.snapStart = registerOutput<FunctionSnapStart?>('snapStart');
    this.sourceCodeHash = registerOutput<String?>('sourceCodeHash');
    this.sourceCodeSize = registerOutput<int?>('sourceCodeSize');
    this.sourceKmsKeyArn = registerOutput<String?>('sourceKmsKeyArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>?>('tagsAll');
    this.tenancyConfig =
        registerOutput<FunctionTenancyConfig?>('tenancyConfig');
    this.timeout = registerOutput<int?>('timeout');
    this.tracingConfig =
        registerOutput<FunctionTracingConfig?>('tracingConfig');
    this.version = registerOutput<String?>('version');
    this.vpcConfig = registerOutput<FunctionVpcConfig?>('vpcConfig');
  }
}
