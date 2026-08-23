import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_assessment_args.dart';
import 'get_assessment_result.dart';
import 'list_assessment_upload_token_args.dart';
import 'list_assessment_upload_token_result.dart';

/// Get a Assessment
///
/// Uses Azure REST API version 2026-03-17-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_billingtrust_get_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssessmentResult> getAssessment(
  GetAssessmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billingtrust:getAssessment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssessmentResult.fromMap(result);
}

/// Request a time-bound, principal-bound upload token for supplemental document uploads.
///
/// Uses Azure REST API version 2026-03-17-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_billingtrust_list_assessment_upload_token_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAssessmentUploadTokenResult> listAssessmentUploadToken(
  ListAssessmentUploadTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:billingtrust:listAssessmentUploadToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAssessmentUploadTokenResult.fromMap(result);
}
