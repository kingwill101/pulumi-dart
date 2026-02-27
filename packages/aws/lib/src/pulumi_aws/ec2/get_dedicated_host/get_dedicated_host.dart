import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_host_args.dart';
import 'get_dedicated_host_result.dart';

/// Use this data source to get information about an EC2 Dedicated Host.
///
/// ## Example Usage
///
///
///
/// ### Filter Example
Future<GetDedicatedHostResult> getDedicatedHost(
  GetDedicatedHostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getDedicatedHost:getDedicatedHost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHostResult.fromMap(result);
}
