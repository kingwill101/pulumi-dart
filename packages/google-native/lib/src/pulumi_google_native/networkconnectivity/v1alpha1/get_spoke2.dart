import 'package:pulumi/pulumi.dart';
import 'get_spoke_args2.dart';
import 'get_spoke_result2.dart';

/// Gets details about a Network Connectivity Center spoke.
Future<GetSpokeResult2> getSpoke2(
  GetSpokeArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getSpoke',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSpokeResult2.fromMap(result);
}
