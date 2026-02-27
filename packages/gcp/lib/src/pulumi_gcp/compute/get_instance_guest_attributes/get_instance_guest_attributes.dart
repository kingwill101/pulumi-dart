import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_guest_attributes_args.dart';
import 'get_instance_guest_attributes_result.dart';

/// Get information about a VM instance resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instances)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instances).
///
/// Get information about VM's guest attrubutes. For more information see [the official documentation](https://cloud.google.com/compute/docs/metadata/manage-guest-attributes)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/rest/v1/instances/getGuestAttributes).
///
/// ## Example Usage
///
/// ### Get All Attributes From A Single Namespace
///
///
///
/// ### Get A Specific Variable
Future<GetInstanceGuestAttributesResult> getInstanceGuestAttributes(
  GetInstanceGuestAttributesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceGuestAttributes:getInstanceGuestAttributes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGuestAttributesResult.fromMap(result);
}
