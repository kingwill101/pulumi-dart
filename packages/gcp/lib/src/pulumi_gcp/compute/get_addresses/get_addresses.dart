import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_addresses_args.dart';
import 'get_addresses_result.dart';

/// List IP addresses in a project. For more information see
/// the official API [list](https://cloud.google.com/compute/docs/reference/latest/addresses/list) and
/// [aggregated list](https://cloud.google.com/compute/docs/reference/rest/v1/addresses/aggregatedList) documentation.
Future<GetAddressesResult> getAddresses(
  GetAddressesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getAddresses:getAddresses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressesResult.fromMap(result);
}
