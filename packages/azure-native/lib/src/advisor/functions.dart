import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_assessment_args.dart';
import 'get_assessment_result.dart';
import 'get_suppression_args.dart';
import 'get_suppression_result.dart';

/// Get a existing Azure Advisor assessment.
///
/// Uses Azure REST API version 2023-09-01-preview.
///
/// Other available API versions: 2024-11-18-preview, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native advisor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_advisor_get_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssessmentResult> getAssessment(
  GetAssessmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:advisor:getAssessment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssessmentResult.fromMap(result);
}

/// Obtains the details of a suppression.
///
/// Uses Azure REST API version 2023-09-01-preview.
///
/// Other available API versions: 2023-01-01, 2024-11-18-preview, 2025-01-01, 2025-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native advisor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_advisor_get_suppression_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSuppressionResult> getSuppression(
  GetSuppressionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:advisor:getSuppression',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSuppressionResult.fromMap(result);
}
