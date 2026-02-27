import 'package:pulumi/pulumi.dart';
import 'get_application_args3.dart';
import 'get_application_result3.dart';

/// Use this data source to get information about an AWS Serverless Application Repository application. For example, this can be used to determine the required `capabilities` for an application.
Future<GetApplicationResult3> getApplication3(
  GetApplicationArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:serverlessrepository/getApplication:getApplication',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult3.fromMap(result);
}
