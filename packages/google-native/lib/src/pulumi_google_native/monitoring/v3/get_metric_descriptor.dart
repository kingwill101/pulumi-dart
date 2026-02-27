import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metric_descriptor_args.dart';
import 'get_metric_descriptor_result.dart';

/// Gets a single metric descriptor.
Future<GetMetricDescriptorResult> getMetricDescriptor(
  GetMetricDescriptorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getMetricDescriptor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetricDescriptorResult.fromMap(result);
}
