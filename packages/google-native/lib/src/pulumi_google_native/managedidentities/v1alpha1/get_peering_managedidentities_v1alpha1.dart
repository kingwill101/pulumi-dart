import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_peering_managedidentities_v1alpha1_args.dart';
import 'get_peering_managedidentities_v1alpha1_result.dart';

/// Gets details of a single Peering.
Future<GetPeeringManagedidentitiesV1alpha1Result>
    getPeeringManagedidentitiesV1alpha1(
  GetPeeringManagedidentitiesV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeringManagedidentitiesV1alpha1Result.fromMap(result);
}
