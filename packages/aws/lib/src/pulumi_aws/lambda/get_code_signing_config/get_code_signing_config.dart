import 'package:pulumi/pulumi.dart';
import 'get_code_signing_config_args.dart';
import 'get_code_signing_config_result.dart';

/// Provides details about an AWS Lambda Code Signing Config. Use this data source to retrieve information about an existing code signing configuration for Lambda functions to ensure code integrity and authenticity.
///
/// For information about Lambda code signing configurations and how to use them, see [configuring code signing for Lambda functions](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Use in Lambda Function
///
///
///
/// ### Validate Signing Profiles
///
///
///
/// ### Multi-Environment Configuration
Future<GetCodeSigningConfigResult> getCodeSigningConfig(
  GetCodeSigningConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getCodeSigningConfig:getCodeSigningConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCodeSigningConfigResult.fromMap(result);
}
