import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interconnect_args.dart';
import 'get_interconnect_result.dart';

/// Returns the specified Interconnect. Get a list of available Interconnects by making a list() request.
Future<GetInterconnectResult> getInterconnect(
  GetInterconnectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInterconnect',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectResult.fromMap(result);
}
