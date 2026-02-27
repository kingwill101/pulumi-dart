import 'package:pulumi/pulumi.dart';
import 'get_hosted_zone_args.dart';
import 'get_hosted_zone_result.dart';

/// Use this data source to get the ID of an [elastic beanstalk hosted zone](http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region).
Future<GetHostedZoneResult> getHostedZone(
  GetHostedZoneArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticbeanstalk/getHostedZone:getHostedZone',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHostedZoneResult.fromMap(result);
}
