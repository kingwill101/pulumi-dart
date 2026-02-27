import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_test_case_dialogflow_v3beta1_args.dart';
import 'get_test_case_dialogflow_v3beta1_result.dart';

/// Gets a test case.
Future<GetTestCaseDialogflowV3beta1Result> getTestCaseDialogflowV3beta1(
  GetTestCaseDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getTestCase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestCaseDialogflowV3beta1Result.fromMap(result);
}
