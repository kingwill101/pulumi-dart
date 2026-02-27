import 'package:pulumi/pulumi.dart' hide Config;
import 'get_test_case_args.dart';
import 'get_test_case_result.dart';

/// Gets a test case.
Future<GetTestCaseResult> getTestCase(
  GetTestCaseArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getTestCase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTestCaseResult.fromMap(result);
}
