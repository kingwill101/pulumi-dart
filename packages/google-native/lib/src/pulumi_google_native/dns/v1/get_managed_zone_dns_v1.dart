import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_zone_dns_v1_args.dart';
import 'get_managed_zone_dns_v1_result.dart';

/// Fetches the representation of an existing ManagedZone.
Future<GetManagedZoneDnsV1Result> getManagedZoneDnsV1(
  GetManagedZoneDnsV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getManagedZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneDnsV1Result.fromMap(result);
}
