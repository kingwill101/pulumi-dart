import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_group_args2.dart';
import 'get_instance_group_result2.dart';

/// Returns the specified zonal instance group. Get a list of available zonal instance groups by making a list() request. For managed instance groups, use the instanceGroupManagers or regionInstanceGroupManagers methods instead.
Future<GetInstanceGroupResult2> getInstanceGroup2(
  GetInstanceGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupResult2.fromMap(result);
}
