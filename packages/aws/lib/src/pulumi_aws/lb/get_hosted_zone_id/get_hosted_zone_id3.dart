import 'package:pulumi/pulumi.dart';
import 'get_hosted_zone_id_args3.dart';
import 'get_hosted_zone_id_result3.dart';

/// Use this data source to get the HostedZoneId of the AWS Elastic Load Balancing (ELB) in a given region for the purpose of using in an AWS Route53 Alias. Specify the ELB type (`network` or `application`) to return the relevant the associated HostedZoneId. Ref: [ELB service endpoints](https://docs.aws.amazon.com/general/latest/gr/elb.html#elb_region)
Future<GetHostedZoneIdResult3> getHostedZoneId3(
  GetHostedZoneIdArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getHostedZoneId:getHostedZoneId',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHostedZoneIdResult3.fromMap(result);
}
