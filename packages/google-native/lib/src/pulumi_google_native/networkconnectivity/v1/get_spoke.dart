import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spoke_args.dart';
import 'get_spoke_result.dart';

/// Gets details about a Network Connectivity Center spoke.
Future<GetSpokeResult> getSpoke(
  GetSpokeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getSpoke',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpokeResult.fromMap(result);
}
