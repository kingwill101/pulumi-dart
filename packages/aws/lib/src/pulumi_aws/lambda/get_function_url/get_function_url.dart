import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_function_url_args.dart';
import 'get_function_url_result.dart';

/// Provides details about an AWS Lambda Function URL. Use this data source to retrieve information about an existing function URL configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Qualifier
///
///
///
/// ### Retrieve CORS Configuration
Future<GetFunctionUrlResult> getFunctionUrl(
  GetFunctionUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getFunctionUrl:getFunctionUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFunctionUrlResult.fromMap(result);
}
