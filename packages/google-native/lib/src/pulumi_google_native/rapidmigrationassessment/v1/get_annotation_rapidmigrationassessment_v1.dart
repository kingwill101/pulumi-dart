import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_annotation_rapidmigrationassessment_v1_args.dart';
import 'get_annotation_rapidmigrationassessment_v1_result.dart';

/// Gets details of a single Annotation.
Future<GetAnnotationRapidmigrationassessmentV1Result>
    getAnnotationRapidmigrationassessmentV1(
  GetAnnotationRapidmigrationassessmentV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:rapidmigrationassessment/v1:getAnnotation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnnotationRapidmigrationassessmentV1Result.fromMap(result);
}
