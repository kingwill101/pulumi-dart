import 'package:pulumi/pulumi.dart' hide Config;
import 'get_spoke_args.dart';
import 'get_spoke_result.dart';

/// Gets details about a Network Connectivity Center spoke.
Future<GetSpokeResult> getSpoke(
  GetSpokeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getSpoke',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSpokeResult.fromMap(result);
}
