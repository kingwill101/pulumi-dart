import 'package:pulumi/pulumi.dart';
import 'get_interconnect_args2.dart';
import 'get_interconnect_result2.dart';

/// Returns the specified Interconnect. Get a list of available Interconnects by making a list() request.
Future<GetInterconnectResult2> getInterconnect2(
  GetInterconnectArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInterconnect',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInterconnectResult2.fromMap(result);
}
