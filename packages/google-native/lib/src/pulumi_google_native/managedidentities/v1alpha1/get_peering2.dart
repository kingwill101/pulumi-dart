import 'package:pulumi/pulumi.dart' hide Config;
import 'get_peering_args2.dart';
import 'get_peering_result2.dart';

/// Gets details of a single Peering.
Future<GetPeeringResult2> getPeering2(
  GetPeeringArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getPeering',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPeeringResult2.fromMap(result);
}
