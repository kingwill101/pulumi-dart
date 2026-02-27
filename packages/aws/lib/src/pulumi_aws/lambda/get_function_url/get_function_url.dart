import 'package:pulumi/pulumi.dart';
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
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lambda/getFunctionUrl:getFunctionUrl',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionUrlResult.fromMap(result);
}
