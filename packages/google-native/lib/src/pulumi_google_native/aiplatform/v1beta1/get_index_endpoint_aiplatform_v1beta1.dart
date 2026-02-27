import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_endpoint_aiplatform_v1beta1_args.dart';
import 'get_index_endpoint_aiplatform_v1beta1_result.dart';

/// Gets an IndexEndpoint.
Future<GetIndexEndpointAiplatformV1beta1Result>
    getIndexEndpointAiplatformV1beta1(
  GetIndexEndpointAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getIndexEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIndexEndpointAiplatformV1beta1Result.fromMap(result);
}
