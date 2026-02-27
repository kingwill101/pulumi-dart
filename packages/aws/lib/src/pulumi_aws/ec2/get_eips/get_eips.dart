import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_eips_args.dart';
import 'get_eips_result.dart';

/// Provides a list of Elastic IPs in a region.
///
/// ## Example Usage
///
/// The following shows outputting all Elastic IPs with the a specific tag value.
Future<GetEipsResult> getEips(
  GetEipsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getEips:getEips',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEipsResult.fromMap(result);
}
