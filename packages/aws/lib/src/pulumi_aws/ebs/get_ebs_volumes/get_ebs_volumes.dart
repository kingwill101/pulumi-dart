import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ebs_volumes_args.dart';
import 'get_ebs_volumes_result.dart';

/// `aws.ebs.getEbsVolumes` provides identifying information for EBS volumes matching given criteria.
///
/// This data source can be useful for getting a list of volume IDs with (for example) matching tags.
///
/// ## Example Usage
///
/// The following demonstrates obtaining a map of availability zone to EBS volume ID for volumes with a given tag value.
Future<GetEbsVolumesResult> getEbsVolumes(
  GetEbsVolumesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getEbsVolumes:getEbsVolumes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEbsVolumesResult.fromMap(result);
}
