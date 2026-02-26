import 'package:pulumi/pulumi.dart';
import 'get_peering_args.dart';
import 'get_peering_result.dart';

/// Gets details of a single Peering.
Future<GetPeeringResult> getPeering(
  GetPeeringArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1:getPeering',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPeeringResult.fromMap(result);
}
