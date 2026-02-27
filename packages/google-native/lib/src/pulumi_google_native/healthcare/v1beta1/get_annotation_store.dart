import 'package:pulumi/pulumi.dart' hide Config;
import 'get_annotation_store_args.dart';
import 'get_annotation_store_result.dart';

/// Gets the specified Annotation store or returns NOT_FOUND if it does not exist.
Future<GetAnnotationStoreResult> getAnnotationStore(
  GetAnnotationStoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getAnnotationStore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAnnotationStoreResult.fromMap(result);
}
