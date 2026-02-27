import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_offerings_args.dart';
import 'get_instance_type_offerings_result.dart';

/// Information about EC2 Instance Type Offerings.
Future<GetInstanceTypeOfferingsResult> getInstanceTypeOfferings(
  GetInstanceTypeOfferingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstanceTypeOfferings:getInstanceTypeOfferings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeOfferingsResult.fromMap(result);
}
