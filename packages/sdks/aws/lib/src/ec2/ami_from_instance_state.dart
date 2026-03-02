// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ami_from_instance_ebs_block_device.dart';
import 'ami_from_instance_ephemeral_block_device.dart';

/// Input properties used for looking up and filtering AmiFromInstance resources.
class AmiFromInstanceState {
  /// Machine architecture for created instances. Defaults to `x86_64`.
  final pulumi.Input<String>? architecture;
  /// ARN of the AMI.
  final pulumi.Input<String>? arn;
  /// Boot mode of the AMI. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the Amazon Elastic Compute Cloud User Guide.
  final pulumi.Input<String>? bootMode;
  /// Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? deprecationTime;
  /// Longer, human-readable description for the AMI.
  final pulumi.Input<String>? description;
  /// Nested block describing an EBS block device that should be
  /// attached to created instances. The structure of this block is described below.
  final pulumi.Input<List<AmiFromInstanceEbsBlockDevice>>? ebsBlockDevices;
  /// Whether enhanced networking with ENA is enabled. Defaults to `false`.
  final pulumi.Input<bool>? enaSupport;
  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  final pulumi.Input<List<AmiFromInstanceEphemeralBlockDevice>>? ephemeralBlockDevices;
  final pulumi.Input<String>? hypervisor;
  /// Path to an S3 object containing an image manifest, e.g., created
  /// by the `ec2-upload-bundle` command in the EC2 command line tools.
  final pulumi.Input<String>? imageLocation;
  final pulumi.Input<String>? imageOwnerAlias;
  final pulumi.Input<String>? imageType;
  /// If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to `v2.0`. For more information, see [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration).
  final pulumi.Input<String>? imdsSupport;
  /// ID of the kernel image (AKI) that will be used as the paravirtual
  /// kernel in created instances.
  final pulumi.Input<String>? kernelId;
  /// Date and time, in ISO 8601 date-time format , when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported. For more information, see the following [AWS document](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-last-launched-time.html).
  final pulumi.Input<String>? lastLaunchedTime;
  final pulumi.Input<bool>? manageEbsSnapshots;
  /// Region-unique name for the AMI.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? ownerId;
  final pulumi.Input<String>? platform;
  final pulumi.Input<String>? platformDetails;
  final pulumi.Input<bool>? public;
  /// ID of an initrd image (ARI) that will be used when booting the
  /// created instances.
  final pulumi.Input<String>? ramdiskId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the root device (for example, `/dev/sda1`, or `/dev/xvda`).
  final pulumi.Input<String>? rootDeviceName;
  final pulumi.Input<String>? rootSnapshotId;
  /// Boolean that overrides the behavior of stopping
  /// the instance before snapshotting. This is risky since it may cause a snapshot of an
  /// inconsistent filesystem state, but can be used to avoid downtime if the user otherwise
  /// guarantees that no filesystem writes will be underway at the time of snapshot.
  final pulumi.Input<bool>? snapshotWithoutReboot;
  /// ID of the instance to use as the basis of the AMI.
  final pulumi.Input<String>? sourceInstanceId;
  /// When set to "simple" (the default), enables enhanced networking
  /// for created instances. No other value is supported at this time.
  final pulumi.Input<String>? sriovNetSupport;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// If the image is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the Amazon Elastic Compute Cloud User Guide.
  final pulumi.Input<String>? tpmSupport;
  /// Base64 representation of the non-volatile UEFI variable store.
  final pulumi.Input<String>? uefiData;
  final pulumi.Input<String>? usageOperation;
  /// Keyword to choose what virtualization mode created instances
  /// will use. Can be either "paravirtual" (the default) or "hvm". The choice of virtualization type
  /// changes the set of further arguments that are required, as described below.
  final pulumi.Input<String>? virtualizationType;

  /// Creates a new [AmiFromInstanceState].
  /// [architecture] Machine architecture for created instances. Defaults to `x86_64`.
  /// [arn] ARN of the AMI.
  /// [bootMode] Boot mode of the AMI. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the Amazon Elastic Compute Cloud User Guide.
  /// [deprecationTime] Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  /// [description] Longer, human-readable description for the AMI.
  /// [ebsBlockDevices] Nested block describing an EBS block device that should be
  /// [enaSupport] Whether enhanced networking with ENA is enabled. Defaults to `false`.
  /// [ephemeralBlockDevices] Nested block describing an ephemeral block device that
  /// [hypervisor] Optional.
  /// [imageLocation] Path to an S3 object containing an image manifest, e.g., created
  /// [imageOwnerAlias] Optional.
  /// [imageType] Optional.
  /// [imdsSupport] If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to `v2.0`. For more information, see [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration).
  /// [kernelId] ID of the kernel image (AKI) that will be used as the paravirtual
  /// [lastLaunchedTime] Date and time, in ISO 8601 date-time format , when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported. For more information, see the following [AWS document](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-last-launched-time.html).
  /// [manageEbsSnapshots] Optional.
  /// [name] Region-unique name for the AMI.
  /// [ownerId] Optional.
  /// [platform] Optional.
  /// [platformDetails] Optional.
  /// [public] Optional.
  /// [ramdiskId] ID of an initrd image (ARI) that will be used when booting the
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootDeviceName] Name of the root device (for example, `/dev/sda1`, or `/dev/xvda`).
  /// [rootSnapshotId] Optional.
  /// [snapshotWithoutReboot] Boolean that overrides the behavior of stopping
  /// [sourceInstanceId] ID of the instance to use as the basis of the AMI.
  /// [sriovNetSupport] When set to "simple" (the default), enables enhanced networking
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [tpmSupport] If the image is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the Amazon Elastic Compute Cloud User Guide.
  /// [uefiData] Base64 representation of the non-volatile UEFI variable store.
  /// [usageOperation] Optional.
  /// [virtualizationType] Keyword to choose what virtualization mode created instances
  AmiFromInstanceState({
    this.architecture,
    this.arn,
    this.bootMode,
    this.deprecationTime,
    this.description,
    this.ebsBlockDevices,
    this.enaSupport,
    this.ephemeralBlockDevices,
    this.hypervisor,
    this.imageLocation,
    this.imageOwnerAlias,
    this.imageType,
    this.imdsSupport,
    this.kernelId,
    this.lastLaunchedTime,
    this.manageEbsSnapshots,
    this.name,
    this.ownerId,
    this.platform,
    this.platformDetails,
    this.public,
    this.ramdiskId,
    this.region,
    this.rootDeviceName,
    this.rootSnapshotId,
    this.snapshotWithoutReboot,
    this.sourceInstanceId,
    this.sriovNetSupport,
    this.tags,
    this.tagsAll,
    this.tpmSupport,
    this.uefiData,
    this.usageOperation,
    this.virtualizationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'arn': ?arn,
      'bootMode': ?bootMode,
      'deprecationTime': ?deprecationTime,
      'description': ?description,
      'ebsBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<AmiFromInstanceEbsBlockDevice>, List<Map<String, dynamic>>>(ebsBlockDevices, (value) => pulumi.Input.encodeList<AmiFromInstanceEbsBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enaSupport': ?enaSupport,
      'ephemeralBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<AmiFromInstanceEphemeralBlockDevice>, List<Map<String, dynamic>>>(ephemeralBlockDevices, (value) => pulumi.Input.encodeList<AmiFromInstanceEphemeralBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hypervisor': ?hypervisor,
      'imageLocation': ?imageLocation,
      'imageOwnerAlias': ?imageOwnerAlias,
      'imageType': ?imageType,
      'imdsSupport': ?imdsSupport,
      'kernelId': ?kernelId,
      'lastLaunchedTime': ?lastLaunchedTime,
      'manageEbsSnapshots': ?manageEbsSnapshots,
      'name': ?name,
      'ownerId': ?ownerId,
      'platform': ?platform,
      'platformDetails': ?platformDetails,
      'public': ?public,
      'ramdiskId': ?ramdiskId,
      'region': ?region,
      'rootDeviceName': ?rootDeviceName,
      'rootSnapshotId': ?rootSnapshotId,
      'snapshotWithoutReboot': ?snapshotWithoutReboot,
      'sourceInstanceId': ?sourceInstanceId,
      'sriovNetSupport': ?sriovNetSupport,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tpmSupport': ?tpmSupport,
      'uefiData': ?uefiData,
      'usageOperation': ?usageOperation,
      'virtualizationType': ?virtualizationType,
    };
  }

  factory AmiFromInstanceState.fromMap(Map<String, dynamic> map) {
    return AmiFromInstanceState(
      architecture: map['architecture'] == null ? null : ((map['architecture'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      bootMode: map['bootMode'] == null ? null : ((map['bootMode'] as String).input()).input(),
      deprecationTime: map['deprecationTime'] == null ? null : ((map['deprecationTime'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      ebsBlockDevices: map['ebsBlockDevices'] == null ? null : ((pulumi.Input.decodeList<AmiFromInstanceEbsBlockDevice>(map['ebsBlockDevices']!, (value) => AmiFromInstanceEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      enaSupport: map['enaSupport'] == null ? null : ((map['enaSupport'] as bool).input()).input(),
      ephemeralBlockDevices: map['ephemeralBlockDevices'] == null ? null : ((pulumi.Input.decodeList<AmiFromInstanceEphemeralBlockDevice>(map['ephemeralBlockDevices']!, (value) => AmiFromInstanceEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      hypervisor: map['hypervisor'] == null ? null : ((map['hypervisor'] as String).input()).input(),
      imageLocation: map['imageLocation'] == null ? null : ((map['imageLocation'] as String).input()).input(),
      imageOwnerAlias: map['imageOwnerAlias'] == null ? null : ((map['imageOwnerAlias'] as String).input()).input(),
      imageType: map['imageType'] == null ? null : ((map['imageType'] as String).input()).input(),
      imdsSupport: map['imdsSupport'] == null ? null : ((map['imdsSupport'] as String).input()).input(),
      kernelId: map['kernelId'] == null ? null : ((map['kernelId'] as String).input()).input(),
      lastLaunchedTime: map['lastLaunchedTime'] == null ? null : ((map['lastLaunchedTime'] as String).input()).input(),
      manageEbsSnapshots: map['manageEbsSnapshots'] == null ? null : ((map['manageEbsSnapshots'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      platform: map['platform'] == null ? null : ((map['platform'] as String).input()).input(),
      platformDetails: map['platformDetails'] == null ? null : ((map['platformDetails'] as String).input()).input(),
      public: map['public'] == null ? null : ((map['public'] as bool).input()).input(),
      ramdiskId: map['ramdiskId'] == null ? null : ((map['ramdiskId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      rootDeviceName: map['rootDeviceName'] == null ? null : ((map['rootDeviceName'] as String).input()).input(),
      rootSnapshotId: map['rootSnapshotId'] == null ? null : ((map['rootSnapshotId'] as String).input()).input(),
      snapshotWithoutReboot: map['snapshotWithoutReboot'] == null ? null : ((map['snapshotWithoutReboot'] as bool).input()).input(),
      sourceInstanceId: map['sourceInstanceId'] == null ? null : ((map['sourceInstanceId'] as String).input()).input(),
      sriovNetSupport: map['sriovNetSupport'] == null ? null : ((map['sriovNetSupport'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      tpmSupport: map['tpmSupport'] == null ? null : ((map['tpmSupport'] as String).input()).input(),
      uefiData: map['uefiData'] == null ? null : ((map['uefiData'] as String).input()).input(),
      usageOperation: map['usageOperation'] == null ? null : ((map['usageOperation'] as String).input()).input(),
      virtualizationType: map['virtualizationType'] == null ? null : ((map['virtualizationType'] as String).input()).input(),
    );
  }
}

