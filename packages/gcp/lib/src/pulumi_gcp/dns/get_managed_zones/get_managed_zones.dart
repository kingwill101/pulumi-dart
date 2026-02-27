import 'package:pulumi/pulumi.dart';
import 'get_managed_zones_args.dart';
import 'get_managed_zones_result.dart';

/// Provides access to a list of zones within Google Cloud DNS.
/// For more information see
/// [the official documentation](https://cloud.google.com/dns/zones/)
/// and
/// [API](https://cloud.google.com/dns/api/v1/managedZones).
Future<GetManagedZonesResult> getManagedZones(
  GetManagedZonesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getManagedZones:getManagedZones',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedZonesResult.fromMap(result);
}
