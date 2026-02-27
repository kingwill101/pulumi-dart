import 'package:pulumi/pulumi.dart';
import 'get_managed_zone_args.dart';
import 'get_managed_zone_result.dart';

/// Provides access to a zone's attributes within Google Cloud DNS.
/// For more information see
/// [the official documentation](https://cloud.google.com/dns/zones/)
/// and
/// [API](https://cloud.google.com/dns/api/v1/managedZones).
Future<GetManagedZoneResult> getManagedZone(
  GetManagedZoneArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getManagedZone:getManagedZone',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneResult.fromMap(result);
}
