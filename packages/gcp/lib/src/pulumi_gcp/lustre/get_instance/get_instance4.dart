import 'package:pulumi/pulumi.dart';
import 'get_instance_args4.dart';
import 'get_instance_result4.dart';

/// Use this data source to get information about a Lustre instance. For more information see the [API docs](https://cloud.google.com/filestore/docs/lustre/reference/rest/v1/projects.locations.instances).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```yaml
/// variables:
/// instance:
/// fn::invoke:
/// function: gcp:lustre:getInstance
/// arguments:
/// name: my-instance
/// zone: us-central1-a
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetInstanceResult4> getInstance4(
  GetInstanceArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:lustre/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult4.fromMap(result);
}
