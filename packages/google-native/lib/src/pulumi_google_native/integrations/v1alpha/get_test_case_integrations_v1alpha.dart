import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_test_case_integrations_v1alpha_args.dart';
import 'get_test_case_integrations_v1alpha_result.dart';

/// Get a test case
Future<GetTestCaseIntegrationsV1alphaResult> getTestCaseIntegrationsV1alpha(
  GetTestCaseIntegrationsV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getTestCase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestCaseIntegrationsV1alphaResult.fromMap(result);
}
