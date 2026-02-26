import 'package:pulumi/pulumi.dart';
import 'get_instance_group_args3.dart';
import 'get_instance_group_result3.dart';

/// Returns the specified zonal instance group. Get a list of available zonal instance groups by making a list() request. For managed instance groups, use the instanceGroupManagers or regionInstanceGroupManagers methods instead.
Future<GetInstanceGroupResult3> getInstanceGroup3(
  GetInstanceGroupArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupResult3.fromMap(result);
}
