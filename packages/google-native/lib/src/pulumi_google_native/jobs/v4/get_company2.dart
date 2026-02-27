import 'package:pulumi/pulumi.dart' hide Config;
import 'get_company_args2.dart';
import 'get_company_result2.dart';

/// Retrieves specified company.
Future<GetCompanyResult2> getCompany2(
  GetCompanyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v4:getCompany',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCompanyResult2.fromMap(result);
}
