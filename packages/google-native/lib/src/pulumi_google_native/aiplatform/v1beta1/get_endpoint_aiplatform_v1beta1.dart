import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_aiplatform_v1beta1_args.dart';
import 'get_endpoint_aiplatform_v1beta1_result.dart';

/// Gets an Endpoint.
Future<GetEndpointAiplatformV1beta1Result> getEndpointAiplatformV1beta1(
  GetEndpointAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointAiplatformV1beta1Result.fromMap(result);
}
