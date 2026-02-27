import 'package:pulumi/pulumi.dart' hide Config;
import 'get_annotation_spec_set_args.dart';
import 'get_annotation_spec_set_result.dart';

/// Gets an annotation spec set by resource name.
Future<GetAnnotationSpecSetResult> getAnnotationSpecSet(
  GetAnnotationSpecSetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getAnnotationSpecSet',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAnnotationSpecSetResult.fromMap(result);
}
