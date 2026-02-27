import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reserved_instance_offering_args.dart';
import 'get_reserved_instance_offering_result.dart';

/// Information about a single RDS Reserved Instance Offering.
Future<GetReservedInstanceOfferingResult> getReservedInstanceOffering(
  GetReservedInstanceOfferingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getReservedInstanceOffering:getReservedInstanceOffering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservedInstanceOfferingResult.fromMap(result);
}
