import 'package:pulumi/pulumi.dart';
import 'get_instance_type_offerings_args2.dart';
import 'get_instance_type_offerings_result2.dart';

/// Provides details about available MQ broker instance type offerings. Use this data source to discover supported instance types, storage types, and deployment modes for Amazon MQ brokers.
Future<GetInstanceTypeOfferingsResult2> getInstanceTypeOfferings2(
  GetInstanceTypeOfferingsArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mq/getInstanceTypeOfferings:getInstanceTypeOfferings',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeOfferingsResult2.fromMap(result);
}
