import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_zone_dns_v1beta2_args.dart';
import 'get_managed_zone_dns_v1beta2_result.dart';

/// Fetches the representation of an existing ManagedZone.
Future<GetManagedZoneDnsV1beta2Result> getManagedZoneDnsV1beta2(
  GetManagedZoneDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getManagedZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneDnsV1beta2Result.fromMap(result);
}
