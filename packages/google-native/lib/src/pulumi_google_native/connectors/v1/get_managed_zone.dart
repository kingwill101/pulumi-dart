import 'package:pulumi/pulumi.dart' hide Config;
import 'get_managed_zone_args.dart';
import 'get_managed_zone_result.dart';

/// Gets details of a single ManagedZone.
Future<GetManagedZoneResult> getManagedZone(
  GetManagedZoneArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getManagedZone',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneResult.fromMap(result);
}
