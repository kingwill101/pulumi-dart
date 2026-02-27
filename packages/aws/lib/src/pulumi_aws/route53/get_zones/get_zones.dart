import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_result.dart';

/// This resource can be useful for getting back a list of Route53 Hosted Zone IDs for a Region.
///
/// ## Example Usage
///
/// The following example retrieves a list of all Hosted Zone IDs.
Future<GetZonesResult> getZones({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getZones:getZones',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
