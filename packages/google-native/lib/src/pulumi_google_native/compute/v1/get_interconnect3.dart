import 'package:pulumi/pulumi.dart' hide Config;
import 'get_interconnect_args3.dart';
import 'get_interconnect_result3.dart';

/// Returns the specified Interconnect. Get a list of available Interconnects by making a list() request.
Future<GetInterconnectResult3> getInterconnect3(
  GetInterconnectArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInterconnect',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInterconnectResult3.fromMap(result);
}
