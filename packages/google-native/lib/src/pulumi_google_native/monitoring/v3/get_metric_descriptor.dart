import 'package:pulumi/pulumi.dart' hide Config;
import 'get_metric_descriptor_args.dart';
import 'get_metric_descriptor_result.dart';

/// Gets a single metric descriptor.
Future<GetMetricDescriptorResult> getMetricDescriptor(
  GetMetricDescriptorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getMetricDescriptor',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetricDescriptorResult.fromMap(result);
}
