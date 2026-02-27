import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_aiplatform_v1beta1_args.dart';
import 'get_index_aiplatform_v1beta1_result.dart';

/// Gets an Index.
Future<GetIndexAiplatformV1beta1Result> getIndexAiplatformV1beta1(
  GetIndexAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexAiplatformV1beta1Result.fromMap(result);
}
