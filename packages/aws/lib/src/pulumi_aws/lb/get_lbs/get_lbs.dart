import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lbs_args.dart';
import 'get_lbs_result.dart';

/// Use this data source to get a list of Load Balancer ARNs matching the specified criteria. Useful for passing to other
/// resources.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetLbsResult> getLbs(
  GetLbsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getLbs:getLbs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLbsResult.fromMap(result);
}
