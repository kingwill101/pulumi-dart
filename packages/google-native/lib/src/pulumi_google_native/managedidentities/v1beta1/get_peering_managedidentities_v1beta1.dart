import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_peering_managedidentities_v1beta1_args.dart';
import 'get_peering_managedidentities_v1beta1_result.dart';

/// Gets details of a single Peering.
Future<GetPeeringManagedidentitiesV1beta1Result>
    getPeeringManagedidentitiesV1beta1(
  GetPeeringManagedidentitiesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringManagedidentitiesV1beta1Result.fromMap(result);
}
