import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hosted_zone_id_lb_args.dart';
import 'get_hosted_zone_id_lb_result.dart';

/// Use this data source to get the HostedZoneId of the AWS Elastic Load Balancing (ELB) in a given region for the purpose of using in an AWS Route53 Alias. Specify the ELB type (`network` or `application`) to return the relevant the associated HostedZoneId. Ref: [ELB service endpoints](https://docs.aws.amazon.com/general/latest/gr/elb.html#elb_region)
Future<GetHostedZoneIdLbResult> getHostedZoneIdLb(
  GetHostedZoneIdLbArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getHostedZoneId:getHostedZoneId',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostedZoneIdLbResult.fromMap(result);
}
