import 'package:pulumi/pulumi.dart';
import 'get_availability_zones_args.dart';
import 'get_availability_zones_result.dart';

/// The Availability Zones data source allows access to the list of AWS
/// Availability Zones which can be accessed by an AWS account within the region
/// configured in the provider.
///
/// This is different from the `aws.getAvailabilityZone` (singular) data source,
/// which provides some details about a specific availability zone.
///
/// > When [Local Zones](https://aws.amazon.com/about-aws/global-infrastructure/localzones/) are enabled in a region, by default the API and this data source include both Local Zones and Availability Zones. To return only Availability Zones, see the example section below.
///
/// ## Example Usage
///
/// ### By State
///
///
///
/// ### By Filter
///
/// All Local Zones (regardless of opt-in status):
///
///
///
/// Only Availability Zones (no Local Zones):
Future<GetAvailabilityZonesResult> getAvailabilityZones(
  GetAvailabilityZonesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getAvailabilityZones:getAvailabilityZones',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAvailabilityZonesResult.fromMap(result);
}
