import 'package:pulumi/pulumi.dart' hide Config;
import 'get_zone_args.dart';
import 'get_zone_result.dart';

/// Retrieves a zone resource.
Future<GetZoneResult> getZone(
  GetZoneArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getZone',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetZoneResult.fromMap(result);
}
