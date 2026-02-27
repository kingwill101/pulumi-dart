import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_serverlessrepository_args.dart';
import 'get_application_serverlessrepository_result.dart';

/// Use this data source to get information about an AWS Serverless Application Repository application. For example, this can be used to determine the required `capabilities` for an application.
Future<GetApplicationServerlessrepositoryResult>
    getApplicationServerlessrepository(
  GetApplicationServerlessrepositoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:serverlessrepository/getApplication:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationServerlessrepositoryResult.fromMap(result);
}
