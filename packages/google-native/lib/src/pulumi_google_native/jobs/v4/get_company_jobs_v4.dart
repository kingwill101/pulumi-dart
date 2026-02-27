import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_company_jobs_v4_args.dart';
import 'get_company_jobs_v4_result.dart';

/// Retrieves specified company.
Future<GetCompanyJobsV4Result> getCompanyJobsV4(
  GetCompanyJobsV4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v4:getCompany',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCompanyJobsV4Result.fromMap(result);
}
