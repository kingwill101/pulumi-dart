import 'package:pulumi/pulumi.dart';
import 'get_managed_zone_args2.dart';
import 'get_managed_zone_result2.dart';

/// Fetches the representation of an existing ManagedZone.
Future<GetManagedZoneResult2> getManagedZone2(
  GetManagedZoneArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getManagedZone',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneResult2.fromMap(result);
}
