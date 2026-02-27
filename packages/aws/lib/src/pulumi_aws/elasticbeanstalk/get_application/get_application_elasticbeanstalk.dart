import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_elasticbeanstalk_args.dart';
import 'get_application_elasticbeanstalk_result.dart';

/// Retrieve information about an Elastic Beanstalk Application.
Future<GetApplicationElasticbeanstalkResult> getApplicationElasticbeanstalk(
  GetApplicationElasticbeanstalkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticbeanstalk/getApplication:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationElasticbeanstalkResult.fromMap(result);
}
