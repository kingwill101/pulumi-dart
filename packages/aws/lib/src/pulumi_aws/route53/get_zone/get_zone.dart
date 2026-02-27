import 'package:pulumi/pulumi.dart';
import 'get_zone_args.dart';
import 'get_zone_result.dart';

/// `aws.route53.Zone` provides details about a specific Route 53 Hosted Zone.
///
/// This data source allows to find a Hosted Zone ID given Hosted Zone name and certain search criteria.
///
/// ## Example Usage
///
/// The following example shows how to get a Hosted Zone from its name and from this data how to create a Record Set.
///
///
///
/// The following example shows how to get a Hosted Zone from a unique combination of its tags:
Future<GetZoneResult> getZone(
  GetZoneArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getZone:getZone',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetZoneResult.fromMap(result);
}
