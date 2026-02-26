import 'package:pulumi/pulumi.dart';
import 'get_interconnect_args.dart';
import 'get_interconnect_result.dart';

/// Returns the specified Interconnect. Get a list of available Interconnects by making a list() request.
Future<GetInterconnectResult> getInterconnect(
  GetInterconnectArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInterconnect',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInterconnectResult.fromMap(result);
}
