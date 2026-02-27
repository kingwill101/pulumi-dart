import 'package:pulumi/pulumi.dart';
import 'get_function_args.dart';
import 'get_function_result.dart';

/// Provides information about a CloudFront Function.
Future<GetFunctionResult> getFunction(
  GetFunctionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudfront/getFunction:getFunction',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFunctionResult.fromMap(result);
}
