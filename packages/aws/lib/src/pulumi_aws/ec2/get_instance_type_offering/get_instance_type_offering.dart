import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_type_offering_args.dart';
import 'get_instance_type_offering_result.dart';

/// Information about single EC2 Instance Type Offering.
Future<GetInstanceTypeOfferingResult> getInstanceTypeOffering(
  GetInstanceTypeOfferingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstanceTypeOffering:getInstanceTypeOffering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeOfferingResult.fromMap(result);
}
