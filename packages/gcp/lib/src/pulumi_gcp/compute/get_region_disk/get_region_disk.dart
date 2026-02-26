import 'package:pulumi/pulumi.dart';
import 'get_region_disk_args.dart';
import 'get_region_disk_result.dart';

/// Get information about a Google Compute Regional Persistent disks.
///
/// [the official documentation](https://cloud.google.com/compute/docs/disks) and its [API](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```yaml
/// resources:
/// default:
/// type: gcp:compute:Instance
/// properties:
/// attachedDisks:
/// - source: ${diskGoogleComputeDisk.selfLink}
/// variables:
/// disk:
/// fn::invoke:
/// function: gcp:compute:getRegionDisk
/// arguments:
/// name: persistent-regional-disk
/// project: example
/// region: us-central1
/// type: pd-ssd
/// physicalBlockSizeBytes: 4096
/// replicaZones:
/// - us-central1-a
/// - us-central1-f
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetRegionDiskResult> getRegionDisk(
  GetRegionDiskArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionDisk:getRegionDisk',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskResult.fromMap(result);
}
