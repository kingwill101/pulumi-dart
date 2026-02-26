import 'package:pulumi/pulumi.dart';
import 'get_subnetwork_args3.dart';
import 'get_subnetwork_result3.dart';

/// Returns the specified subnetwork.
Future<GetSubnetworkResult3> getSubnetwork3(
  GetSubnetworkArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSubnetwork',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkResult3.fromMap(result);
}
