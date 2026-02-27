import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_capacity_block_offering_args.dart';
import 'get_capacity_block_offering_result.dart';

/// Information about a single EC2 Capacity Block Offering.
Future<GetCapacityBlockOfferingResult> getCapacityBlockOffering(
  GetCapacityBlockOfferingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getCapacityBlockOffering:getCapacityBlockOffering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityBlockOfferingResult.fromMap(result);
}
