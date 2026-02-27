import 'package:pulumi/pulumi.dart';
import 'get_hosted_zone_id_args2.dart';
import 'get_hosted_zone_id_result2.dart';

/// Use this data source to get the HostedZoneId of the AWS Elastic Load Balancing HostedZoneId
/// in a given region for the purpose of using in an AWS Route53 Alias.
Future<GetHostedZoneIdResult2> getHostedZoneId2(
  GetHostedZoneIdArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elb/getHostedZoneId:getHostedZoneId',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHostedZoneIdResult2.fromMap(result);
}
