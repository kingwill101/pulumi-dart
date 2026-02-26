import 'package:pulumi/pulumi.dart';
import 'get_test_case_args2.dart';
import 'get_test_case_result2.dart';

/// Gets a test case.
Future<GetTestCaseResult2> getTestCase2(
  GetTestCaseArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getTestCase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTestCaseResult2.fromMap(result);
}
