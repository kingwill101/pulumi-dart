import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_args.dart';
import 'get_instance_group_result.dart';

/// Get a Compute Instance Group within GCE.
/// For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/#unmanaged_instance_groups)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/instanceGroups)
Future<GetInstanceGroupResult> getInstanceGroup(
  GetInstanceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceGroup:getInstanceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupResult.fromMap(result);
}
