import 'package:pulumi/pulumi.dart';
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
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getDedicatedHost:getDedicatedHost',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHostResult.fromMap(result);
}
