import 'package:pulumi/pulumi.dart' as pulumi;
import '../function_url_cors/function_url_cors.dart';
import 'function_url_args.dart';

/// Manages a Lambda function URL. Creates a dedicated HTTP(S) endpoint for a Lambda function to enable direct invocation via HTTP requests.
///
/// > **NOTE:** When [`authorization_type` is `"NONE"`](https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html#urls-auth-none) the `lambda:InvokeFunctionUrl` permission allowing a public endpoint and `lambda:InvokeFunction` permission with the `InvokedViaFunctionUrl` flag set to `true` are automatically added to the Lambda function on creation. These policies are NOT removed from AWS when the resource is destroyed.
///
/// ## Example Usage
///
/// ### Basic Function URL with No Authentication
///
///
///
/// ### Function URL with IAM Authentication and CORS Configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lambda function URLs using the `function_name` or `function_name/qualifier`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/functionUrl:FunctionUrl example example
/// ```
class FunctionUrl extends pulumi.CustomResource {
  /// Type of authentication that the function URL uses. Valid values are `AWS_IAM` and `NONE`.
  late final pulumi.Output<String> authorizationType;

  /// Cross-origin resource sharing (CORS) settings for the function URL. See below.
  late final pulumi.Output<FunctionUrlCors?> cors;

  /// ARN of the Lambda function.
  late final pulumi.Output<String> functionArn;

  /// Name or ARN of the Lambda function.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> functionName;

  /// HTTP URL endpoint for the function in the format `https://<url_id>.lambda-url.<region>.on.aws/`.
  late final pulumi.Output<String> functionUrl;

  /// How the Lambda function responds to an invocation. Valid values are `BUFFERED` (default) and `RESPONSE_STREAM`.
  late final pulumi.Output<String?> invokeMode;

  /// Alias name or `$LATEST`.
  late final pulumi.Output<String?> qualifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Generated ID for the endpoint.
  late final pulumi.Output<String> urlId;

  FunctionUrl(
    String name, {
    FunctionUrlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/functionUrl:FunctionUrl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizationType = registerOutput<String>('authorizationType');
    this.cors = registerOutput<FunctionUrlCors?>('cors');
    this.functionArn = registerOutput<String>('functionArn');
    this.functionName = registerOutput<String>('functionName');
    this.functionUrl = registerOutput<String>('functionUrl');
    this.invokeMode = registerOutput<String?>('invokeMode');
    this.qualifier = registerOutput<String?>('qualifier');
    this.region = registerOutput<String>('region');
    this.urlId = registerOutput<String>('urlId');
  }
}
