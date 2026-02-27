import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hosted_zone_id_args.dart';
import 'get_hosted_zone_id_result.dart';

/// Use this data source to get the HostedZoneId of an AWS App Runner service deployed
/// in a given region for the purpose of using it in an AWS Route53 Alias record.
Future<GetHostedZoneIdResult> getHostedZoneId(
  GetHostedZoneIdArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apprunner/getHostedZoneId:getHostedZoneId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostedZoneIdResult.fromMap(result);
}
