import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_peering_args.dart';
import 'get_peering_result.dart';

/// Gets details of a single Peering.
Future<GetPeeringResult> getPeering(
  GetPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1:getPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringResult.fromMap(result);
}
