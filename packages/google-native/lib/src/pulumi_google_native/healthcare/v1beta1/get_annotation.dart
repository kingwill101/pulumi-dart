import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_annotation_args.dart';
import 'get_annotation_result.dart';

/// Gets an Annotation.
Future<GetAnnotationResult> getAnnotation(
  GetAnnotationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getAnnotation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnnotationResult.fromMap(result);
}
