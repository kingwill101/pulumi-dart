import 'package:pulumi/pulumi.dart';
import 'get_arn_args.dart';
import 'get_arn_result.dart';

/// Parses an ARN into its constituent parts.
Future<GetArnResult> getArn(
  GetArnArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getArn:getArn',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetArnResult.fromMap(result);
}
