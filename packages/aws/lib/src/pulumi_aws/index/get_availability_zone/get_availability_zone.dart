import 'package:pulumi/pulumi.dart';
import 'get_availability_zone_args.dart';
import 'get_availability_zone_result.dart';

/// `aws.getAvailabilityZone` provides details about a specific availability zone (AZ)
/// in the current Region.
///
/// This can be used both to validate an availability zone given in a variable
/// and to split the AZ name into its component parts of an AWS Region and an
/// AZ identifier letter. The latter may be useful e.g., for implementing a
/// consistent subnet numbering scheme across several regions by mapping both
/// the region and the subnet letter to network numbers.
///
/// This is different from the `aws.getAvailabilityZones` (plural) data source,
/// which provides a list of the available zones.
///
/// ## Example Usage
///
/// The following example shows how this data source might be used to derive
/// VPC and subnet CIDR prefixes systematically for an availability zone.
Future<GetAvailabilityZoneResult> getAvailabilityZone(
  GetAvailabilityZoneArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getAvailabilityZone:getAvailabilityZone',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAvailabilityZoneResult.fromMap(result);
}
