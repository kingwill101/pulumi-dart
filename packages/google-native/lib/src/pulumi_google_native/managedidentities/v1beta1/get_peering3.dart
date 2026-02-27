import 'package:pulumi/pulumi.dart' hide Config;
import 'get_peering_args3.dart';
import 'get_peering_result3.dart';

/// Gets details of a single Peering.
Future<GetPeeringResult3> getPeering3(
  GetPeeringArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getPeering',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPeeringResult3.fromMap(result);
}
