import 'package:pulumi/pulumi.dart';
import 'get_test_case_args3.dart';
import 'get_test_case_result3.dart';

/// Get a test case
Future<GetTestCaseResult3> getTestCase3(
  GetTestCaseArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getTestCase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTestCaseResult3.fromMap(result);
}
