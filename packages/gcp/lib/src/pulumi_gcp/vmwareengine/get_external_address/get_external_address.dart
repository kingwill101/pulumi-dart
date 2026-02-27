import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_external_address_args.dart';
import 'get_external_address_result.dart';

/// Use this data source to get details about a external address resource.
///
/// To get more information about external address, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.externalAddresses)
Future<GetExternalAddressResult> getExternalAddress(
  GetExternalAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getExternalAddress:getExternalAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExternalAddressResult.fromMap(result);
}
