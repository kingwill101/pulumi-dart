import 'package:pulumi/pulumi.dart';
import 'get_ebs_volumes_args.dart';
import 'get_ebs_volumes_result.dart';

/// <span pulumi-lang-nodejs="`aws.ebs.getEbsVolumes`" pulumi-lang-dotnet="`aws.ebs.getEbsVolumes`" pulumi-lang-go="`ebs.getEbsVolumes`" pulumi-lang-python="`ebs_get_ebs_volumes`" pulumi-lang-yaml="`aws.ebs.getEbsVolumes`" pulumi-lang-java="`aws.ebs.getEbsVolumes`">`aws.ebs.getEbsVolumes`</span> provides identifying information for EBS volumes matching given criteria.
///
/// This data source can be useful for getting a list of volume IDs with (for example) matching tags.
///
/// ## Example Usage
///
/// The following demonstrates obtaining a map of availability zone to EBS volume ID for volumes with a given tag value.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ebs.getEbsVolumes({
/// tags: {
/// VolumeSet: "TestVolumeSet",
/// },
/// });
/// const exampleGetVolume = example.then(example => .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: aws.ebs.getVolume({
/// filters: [{
/// name: "volume-id",
/// values: [__value],
/// }],
/// }) })));
/// export const availabilityZoneToVolumeId = exampleGetVolume.apply(exampleGetVolume => Object.values(exampleGetVolume).reduce((__obj, s) => ({ ...__obj, [s.id]: s.availabilityZone })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.get_ebs_volumes(tags={
/// "VolumeSet": "TestVolumeSet",
/// })
/// example_get_volume = {__key: aws.ebs.get_volume(filters=[{
/// "name": "volume-id",
/// "values": [__value],
/// }]) for __key, __value in example.ids}
/// pulumi.export("availabilityZoneToVolumeId", {s.id: s.availability_zone for s in example_get_volume})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ebs.GetEbsVolumes.Invoke(new()
/// {
/// Tags =
/// {
/// { "VolumeSet", "TestVolumeSet" },
/// },
/// });
///
/// var exampleGetVolume = ;
///
/// return new Dictionary<string, object?>
/// {
/// ["availabilityZoneToVolumeId"] = exampleGetVolume.Apply(exampleGetVolume => (exampleGetVolume).Values.ToDictionary(item => {
/// var s = item.Value;
/// return s.Id;
/// }, item => {
/// var s = item.Value;
/// return s.AvailabilityZone;
/// })),
/// };
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEbsVolumesResult> getEbsVolumes(
  GetEbsVolumesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getEbsVolumes:getEbsVolumes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEbsVolumesResult.fromMap(result);
}
