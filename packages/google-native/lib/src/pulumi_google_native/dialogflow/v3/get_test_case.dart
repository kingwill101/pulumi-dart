import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_test_case_args.dart';
import 'get_test_case_result.dart';

/// Gets a test case.
Future<GetTestCaseResult> getTestCase(
  GetTestCaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getTestCase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestCaseResult.fromMap(result);
}
