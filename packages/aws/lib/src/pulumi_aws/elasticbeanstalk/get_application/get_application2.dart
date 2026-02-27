import 'package:pulumi/pulumi.dart';
import 'get_application_args2.dart';
import 'get_application_result2.dart';

/// Retrieve information about an Elastic Beanstalk Application.
Future<GetApplicationResult2> getApplication2(
  GetApplicationArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticbeanstalk/getApplication:getApplication',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult2.fromMap(result);
}
