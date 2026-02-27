import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hosted_zone_id_elb_args.dart';
import 'get_hosted_zone_id_elb_result.dart';

/// Use this data source to get the HostedZoneId of the AWS Elastic Load Balancing HostedZoneId
/// in a given region for the purpose of using in an AWS Route53 Alias.
Future<GetHostedZoneIdElbResult> getHostedZoneIdElb(
  GetHostedZoneIdElbArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elb/getHostedZoneId:getHostedZoneId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostedZoneIdElbResult.fromMap(result);
}
