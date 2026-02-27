import 'package:pulumi/pulumi.dart';
import 'get_instance_type_offering_args.dart';
import 'get_instance_type_offering_result.dart';

/// Information about single EC2 Instance Type Offering.
Future<GetInstanceTypeOfferingResult> getInstanceTypeOffering(
  GetInstanceTypeOfferingArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstanceTypeOffering:getInstanceTypeOffering',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeOfferingResult.fromMap(result);
}
