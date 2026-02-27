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
import 'function_args3.dart';

/// Manages an AWS Lambda Function. Use this resource to create serverless functions that run code in response to events without provisioning or managing servers.
///
/// For information about Lambda and how to use it, see [What is AWS Lambda?](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html). For a detailed example of setting up Lambda and API Gateway, see Serverless Applications with AWS Lambda and API Gateway.
///
/// > **Note:** Due to [AWS Lambda improved VPC networking changes that began deploying in September 2019](https://aws.amazon.com/blogs/compute/announcing-improved-vpc-networking-for-aws-lambda-functions/), EC2 subnets and security groups associated with Lambda Functions can take up to 45 minutes to successfully delete. Pulumi AWS Provider version 2.31.0 and later automatically handles this increased timeout, however prior versions require setting the customizable deletion timeouts of those Pulumi resources to 45 minutes (`delete = "45m"`). AWS and HashiCorp are working together to reduce the amount of time required for resource deletion and updates can be tracked in this GitHub issue.
///
/// > **Note:** If you get a `KMSAccessDeniedException: Lambda was unable to decrypt the environment variables because KMS access was denied` error when invoking an `aws.lambda.Function` with environment variables, the IAM role associated with the function may have been deleted and recreated after the function was created. You can fix the problem two ways: 1) updating the function's role to another role and then updating it back again to the recreated role. (When you create a function, Lambda grants permissions on the KMS key to the function's IAM role. If the IAM role is recreated, the grant is no longer valid. Changing the function's role or recreating the function causes Lambda to update the grant.)
///
/// > **Tip:** To give an external source (like an EventBridge Rule, SNS, or S3) permission to access the Lambda function, use the `aws.lambda.Permission` resource. See [Lambda Permission Model](https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html) for more details. On the other hand, the `role` argument of this resource is the function's execution role for identity and access to AWS services and resources.
///
/// ## Example Usage
///
/// ### Container Image Function
///
///
///
/// ### Function with Lambda Layers
///
/// > **Note:** The `aws.lambda.LayerVersion` attribute values for `arn` and `layer_arn` were swapped in version 2.0.0 of the Pulumi AWS Provider. For version 2.x, use `arn` references.
///
///
///
/// ### VPC Function with Enhanced Networking
///
///
///
/// ### Function with EFS Integration
///
///
///
/// ### Function with Advanced Logging
///
///
///
/// ### Function with logging to S3 or Data Firehose
///
/// #### Required Resources
///
/// * An S3 bucket or Data Firehose delivery stream to store the logs.
/// * A CloudWatch Log Group with:
///
/// * `log_group_class = "DELIVERY"`
/// * A subscription filter whose `destination_arn` points to the S3 bucket or the Data Firehose delivery stream.
///
/// * IAM roles:
///
/// * Assumed by the `logs.amazonaws.com` service to deliver logs to the S3 bucket or Data Firehose delivery stream.
/// * Assumed by the `lambda.amazonaws.com` service to send logs to CloudWatch Logs
///
/// * A Lambda function:
///
/// * In the `logging_configuration`, specify the name of the Log Group created above using the `log_group` field
/// * No special configuration is required to use S3 or Firehose as the log destination
///
/// For more details, see [Sending Lambda function logs to Amazon S3](https://docs.aws.amazon.com/lambda/latest/dg/logging-with-s3.html).
///
/// ### Example: Exporting Lambda Logs to S3 Bucket
///
///
///
/// ### Function with Error Handling
///
///
///
/// ### CloudWatch Logging and Permissions
///
///
///
/// ### Function with Durable Configuration
///
/// Stopping durable executions and deleting the Lambda function may take up to `60m`. Use configured `timeouts` as shown below.
///
///
///
/// ### Capacity Provider Configuration
///
///
///
/// See the `aws.lambda.CapacityProvider` resource for more details, such as configuring instance requirements and the scaling policy.
///
/// ## Specifying the Deployment Package
///
/// AWS Lambda expects source code to be provided as a deployment package whose structure varies depending on which `runtime` is in use. See [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime) for the valid values of `runtime`. The expected structure of the deployment package can be found in [the AWS Lambda documentation for each runtime](https://docs.aws.amazon.com/lambda/latest/dg/deployment-package-v2.html).
///
/// Once you have created your deployment package you can specify it either directly as a local file (using the `filename` argument) or indirectly via Amazon S3 (using the `s3_bucket`, `s3_key` and `s3_object_version` arguments). When providing the deployment package via S3 it may be useful to use the `aws.s3.BucketObjectv2` resource to upload it.
///
/// For larger deployment packages it is recommended by Amazon to upload via S3, since the S3 API has better support for uploading large files efficiently.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `function_name` (String) Name of the Lambda function.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Lambda Functions using the `function_name`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/function:Function example example
/// ```
class FunctionType3 extends CustomResource {
  /// Instruction set architecture for your Lambda function. Valid values are `["x86_64"]` and `["arm64"]`. Default is `["x86_64"]`. Removing this attribute, function's architecture stays the same.
  late final Output<List<String>> architectures;

  /// ARN identifying your Lambda Function.
  late final Output<String> arn;

  /// Configuration block for Lambda Capacity Provider. See below.
  late final Output<FunctionCapacityProviderConfig?> capacityProviderConfig;

  /// Path to the function's deployment package within the local filesystem. Conflicts with `image_uri` and `s3_bucket`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  late final Output<dynamic> code;

  /// Base64-encoded representation the source code package file. Use this argument to trigger updates when the function source code changes. For OCI, this value is relayed directly from the image digest. For zip files, this value is the Base64 encoded SHA-256 hash of the `.zip` file. Layers are not included in the calculation. To trigger updates using a non-standard hashing algorithm, use the `source_code_hash` argument instead.
  late final Output<String> codeSha256;

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
  late final Output<FunctionEphemeralStorage> ephemeralStorage;

  /// Configuration block for EFS file system. See below.
  late final Output<FunctionFileSystemConfig?> fileSystemConfig;

  /// Function entry point in your code. Required if `package_type` is `Zip`.
  late final Output<String?> handler;

  /// Container image configuration values. See below.
  late final Output<FunctionImageConfig?> imageConfig;

  /// ECR image URI containing the function's deployment package. Conflicts with `filename` and `s3_bucket`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  late final Output<String?> imageUri;

  /// ARN to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  late final Output<String> invokeArn;

  /// ARN of the AWS Key Management Service key used to encrypt environment variables. If not provided when environment variables are in use, AWS Lambda uses a default service key. If provided when environment variables are not in use, the AWS Lambda API does not save this configuration.
  late final Output<String?> kmsKeyArn;

  /// Date this resource was last modified.
  late final Output<String> lastModified;

  /// List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function.
  late final Output<List<String>?> layers;

  /// Configuration block for advanced logging settings. See below.
  late final Output<FunctionLoggingConfig> loggingConfig;

  /// Amount of memory in MB your Lambda Function can use at runtime. Valid value between 128 MB to 32,768 MB (32 GB), in 1 MB increments. Defaults to 128.
  late final Output<int?> memorySize;

  /// Unique name for your Lambda Function.
  late final Output<String> name;

  /// Lambda deployment package type. Valid values are `Zip` and `Image`. Defaults to `Zip`.
  late final Output<String?> packageType;

  /// Whether to publish creation/change as new Lambda Function Version. Defaults to `false`.
  late final Output<bool?> publish;

  /// Whether to publish to a alias or version number. Omit for regular version publishing. Option is `LATEST_PUBLISHED`.
  late final Output<String?> publishTo;

  /// ARN identifying your Lambda Function Version (if versioning is enabled via `publish = true`).
  late final Output<String> qualifiedArn;

  /// Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway - to be used in `aws.apigateway.Integration`'s `uri`.
  late final Output<String> qualifiedInvokeArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether to replace the security groups on the function's VPC configuration prior to destruction. Default is `false`.
  late final Output<bool?> replaceSecurityGroupsOnDestroy;

  /// List of security group IDs to assign to the function's VPC configuration prior to destruction. Required if `replace_security_groups_on_destroy` is `true`.
  late final Output<List<String>?> replacementSecurityGroupIds;

  /// Amount of reserved concurrent executions for this lambda function. A value of `0` disables lambda from being triggered and `-1` removes any concurrency limitations. Defaults to Unreserved Concurrency Limits `-1`.
  late final Output<int?> reservedConcurrentExecutions;

  /// ARN to be used for invoking Lambda Function from API Gateway with response streaming - to be used in `aws.apigateway.Integration`'s `uri`.
  late final Output<String> responseStreamingInvokeArn;

  /// ARN of the function's execution role. The role provides the function's identity and access to AWS services and resources.
  ///
  /// The following arguments are optional:
  late final Output<String> role;

  /// Identifier of the function's runtime. Required if `package_type` is `Zip`. See [Runtimes](https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html#SSS-CreateFunction-request-Runtime) for valid values.
  late final Output<String?> runtime;

  /// S3 bucket location containing the function's deployment package. Conflicts with `filename` and `image_uri`. One of `filename`, `image_uri`, or `s3_bucket` must be specified.
  late final Output<String?> s3Bucket;

  /// S3 key of an object containing the function's deployment package. Required if `s3_bucket` is set.
  late final Output<String?> s3Key;

  /// Object version containing the function's deployment package. Conflicts with `filename` and `image_uri`.
  late final Output<String?> s3ObjectVersion;

  /// ARN of the signing job.
  late final Output<String> signingJobArn;

  /// ARN of the signing profile version.
  late final Output<String> signingProfileVersionArn;

  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`.
  late final Output<bool?> skipDestroy;

  /// Configuration block for snap start settings. See below.
  late final Output<FunctionSnapStart?> snapStart;

  /// User-defined hash of the source code package file. Use this argument to trigger updates when the local function source code changes. This is a synthetic argument tracked only by the AWS provider and does not need to match the hashing algorithm used by Lambda to compute the `CodeSha256` response value. Out-of-band changes to the source code _will not_ be captured by this argument. To include out-of-band source code changes as an update trigger, use the `code_sha256` argument instead.
  late final Output<String> sourceCodeHash;

  /// Size in bytes of the function .zip file.
  late final Output<int> sourceCodeSize;

  /// ARN of the AWS Key Management Service key used to encrypt the function's `.zip` deployment package. Conflicts with `image_uri`.
  late final Output<String?> sourceKmsKeyArn;

  /// Key-value map of tags for the Lambda function. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for Tenancy. See below.
  late final Output<FunctionTenancyConfig?> tenancyConfig;

  /// Amount of time your Lambda Function has to run in seconds. Defaults to 3. Valid between 1 and 900.
  late final Output<int?> timeout;

  /// Configuration block for X-Ray tracing. See below.
  late final Output<FunctionTracingConfig> tracingConfig;

  /// Latest published version of your Lambda Function.
  late final Output<String> version;

  /// Configuration block for VPC. See below.
  late final Output<FunctionVpcConfig?> vpcConfig;

  FunctionType3(
    String name, {
    FunctionArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lambda/function:Function',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.architectures = registerOutput<List<String>>('architectures');
    this.arn = registerOutput<String>('arn');
    this.capacityProviderConfig =
        registerOutput<FunctionCapacityProviderConfig?>(
            'capacityProviderConfig');
    this.code = registerOutput<dynamic>('code');
    this.codeSha256 = registerOutput<String>('codeSha256');
    this.codeSigningConfigArn = registerOutput<String?>('codeSigningConfigArn');
    this.deadLetterConfig =
        registerOutput<FunctionDeadLetterConfig?>('deadLetterConfig');
    this.description = registerOutput<String?>('description');
    this.durableConfig =
        registerOutput<FunctionDurableConfig?>('durableConfig');
    this.environment = registerOutput<FunctionEnvironment?>('environment');
    this.ephemeralStorage =
        registerOutput<FunctionEphemeralStorage>('ephemeralStorage');
    this.fileSystemConfig =
        registerOutput<FunctionFileSystemConfig?>('fileSystemConfig');
    this.handler = registerOutput<String?>('handler');
    this.imageConfig = registerOutput<FunctionImageConfig?>('imageConfig');
    this.imageUri = registerOutput<String?>('imageUri');
    this.invokeArn = registerOutput<String>('invokeArn');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.lastModified = registerOutput<String>('lastModified');
    this.layers = registerOutput<List<String>?>('layers');
    this.loggingConfig = registerOutput<FunctionLoggingConfig>('loggingConfig');
    this.memorySize = registerOutput<int?>('memorySize');
    this.name = registerOutput<String>('name');
    this.packageType = registerOutput<String?>('packageType');
    this.publish = registerOutput<bool?>('publish');
    this.publishTo = registerOutput<String?>('publishTo');
    this.qualifiedArn = registerOutput<String>('qualifiedArn');
    this.qualifiedInvokeArn = registerOutput<String>('qualifiedInvokeArn');
    this.region = registerOutput<String>('region');
    this.replaceSecurityGroupsOnDestroy =
        registerOutput<bool?>('replaceSecurityGroupsOnDestroy');
    this.replacementSecurityGroupIds =
        registerOutput<List<String>?>('replacementSecurityGroupIds');
    this.reservedConcurrentExecutions =
        registerOutput<int?>('reservedConcurrentExecutions');
    this.responseStreamingInvokeArn =
        registerOutput<String>('responseStreamingInvokeArn');
    this.role = registerOutput<String>('role');
    this.runtime = registerOutput<String?>('runtime');
    this.s3Bucket = registerOutput<String?>('s3Bucket');
    this.s3Key = registerOutput<String?>('s3Key');
    this.s3ObjectVersion = registerOutput<String?>('s3ObjectVersion');
    this.signingJobArn = registerOutput<String>('signingJobArn');
    this.signingProfileVersionArn =
        registerOutput<String>('signingProfileVersionArn');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.snapStart = registerOutput<FunctionSnapStart?>('snapStart');
    this.sourceCodeHash = registerOutput<String>('sourceCodeHash');
    this.sourceCodeSize = registerOutput<int>('sourceCodeSize');
    this.sourceKmsKeyArn = registerOutput<String?>('sourceKmsKeyArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenancyConfig =
        registerOutput<FunctionTenancyConfig?>('tenancyConfig');
    this.timeout = registerOutput<int?>('timeout');
    this.tracingConfig = registerOutput<FunctionTracingConfig>('tracingConfig');
    this.version = registerOutput<String>('version');
    this.vpcConfig = registerOutput<FunctionVpcConfig?>('vpcConfig');
  }
}
