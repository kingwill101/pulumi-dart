import 'package:pulumi/pulumi.dart';
import 'get_instance_type_offerings_args.dart';
import 'get_instance_type_offerings_result.dart';

/// Information about EC2 Instance Type Offerings.
Future<GetInstanceTypeOfferingsResult> getInstanceTypeOfferings(
  GetInstanceTypeOfferingsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstanceTypeOfferings:getInstanceTypeOfferings',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeOfferingsResult.fromMap(result);
}
