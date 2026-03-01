import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lab_args.dart';
import 'get_lab_result.dart';
import 'get_student_args.dart';
import 'get_student_result.dart';

/// Get the details for a specific lab associated with the provided billing account name, billing profile name, and invoice section name.
///
/// Uses Azure REST API version 2021-12-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_education_get_lab_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLabResult> getLab(
  GetLabArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:education:getLab',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLabResult.fromMap(result);
}

/// Get the details for a specific student in the specified lab by student alias
///
/// Uses Azure REST API version 2021-12-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_education_get_student_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStudentResult> getStudent(
  GetStudentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:education:getStudent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStudentResult.fromMap(result);
}
