import 'package:pulumi/pulumi.dart' hide Config;
import 'get_managed_zone_args3.dart';
import 'get_managed_zone_result3.dart';

/// Fetches the representation of an existing ManagedZone.
Future<GetManagedZoneResult3> getManagedZone3(
  GetManagedZoneArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getManagedZone',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneResult3.fromMap(result);
}
