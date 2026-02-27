import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_arn_args.dart';
import 'get_arn_result.dart';

/// Parses an ARN into its constituent parts.
Future<GetArnResult> getArn(
  GetArnArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getArn:getArn',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArnResult.fromMap(result);
}
