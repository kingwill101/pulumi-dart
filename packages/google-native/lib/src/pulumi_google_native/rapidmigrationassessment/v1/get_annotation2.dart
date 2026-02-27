import 'package:pulumi/pulumi.dart' hide Config;
import 'get_annotation_args2.dart';
import 'get_annotation_result2.dart';

/// Gets details of a single Annotation.
Future<GetAnnotationResult2> getAnnotation2(
  GetAnnotationArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:rapidmigrationassessment/v1:getAnnotation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAnnotationResult2.fromMap(result);
}
