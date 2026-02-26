import 'package:pulumi/pulumi.dart';
import 'get_company_args.dart';
import 'get_company_result.dart';

/// Retrieves specified company.
Future<GetCompanyResult> getCompany(
  GetCompanyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v3:getCompany',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCompanyResult.fromMap(result);
}
