import 'package:pulumi/pulumi.dart' hide Config;
import 'get_delivery_pipeline_args.dart';
import 'get_delivery_pipeline_result.dart';

/// Gets details of a single DeliveryPipeline.
Future<GetDeliveryPipelineResult> getDeliveryPipeline(
  GetDeliveryPipelineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:clouddeploy/v1:getDeliveryPipeline',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeliveryPipelineResult.fromMap(result);
}
