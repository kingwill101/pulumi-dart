import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_offerings_mq_args.dart';
import 'get_instance_type_offerings_mq_result.dart';

/// Provides details about available MQ broker instance type offerings. Use this data source to discover supported instance types, storage types, and deployment modes for Amazon MQ brokers.
Future<GetInstanceTypeOfferingsMqResult> getInstanceTypeOfferingsMq(
  GetInstanceTypeOfferingsMqArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mq/getInstanceTypeOfferings:getInstanceTypeOfferings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeOfferingsMqResult.fromMap(result);
}
