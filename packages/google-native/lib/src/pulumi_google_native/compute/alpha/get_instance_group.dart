import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_args.dart';
import 'get_instance_group_result.dart';

/// Returns the specified zonal instance group. Get a list of available zonal instance groups by making a list() request. For managed instance groups, use the instanceGroupManagers or regionInstanceGroupManagers methods instead.
Future<GetInstanceGroupResult> getInstanceGroup(
  GetInstanceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstanceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupResult.fromMap(result);
}
