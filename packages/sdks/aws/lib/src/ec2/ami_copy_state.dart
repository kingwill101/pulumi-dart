// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ami_copy_ebs_block_device.dart';
import 'ami_copy_ephemeral_block_device.dart';

/// Input properties used for looking up and filtering AmiCopy resources.
class AmiCopyState {
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
  /// ARN of the Outpost to which to copy the AMI.
  /// Only specify this parameter when copying an AMI from an AWS Region to an Outpost. The AMI must be in the Region of the destination Outpost.
  final pulumi.Input<String>? destinationOutpostArn;
  /// Nested block describing an EBS block device that should be
  /// attached to created instances. The structure of this block is described below.
  final pulumi.Input<List<AmiCopyEbsBlockDevice>>? ebsBlockDevices;
  /// Whether enhanced networking with ENA is enabled. Defaults to `false`.
  final pulumi.Input<bool>? enaSupport;
  /// Whether the destination snapshots of the copied image should be encrypted. Defaults to `false`
  final pulumi.Input<bool>? encrypted;
  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  final pulumi.Input<List<AmiCopyEphemeralBlockDevice>>? ephemeralBlockDevices;
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
  /// Full ARN of the KMS Key to use when encrypting the snapshots of an image during a copy operation. If not specified, then the default AWS KMS Key will be used
  final pulumi.Input<String>? kmsKeyId;
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
  /// Id of the AMI to copy. This id must be valid in the region
  /// given by `source_ami_region`.
  final pulumi.Input<String>? sourceAmiId;
  /// Region from which the AMI will be copied. This may be the
  /// same as the AWS provider region in order to create a copy within the same region.
  final pulumi.Input<String>? sourceAmiRegion;
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

  /// Creates a new [AmiCopyState].
  /// [architecture] Machine architecture for created instances. Defaults to `x86_64`.
  /// [arn] ARN of the AMI.
  /// [bootMode] Boot mode of the AMI. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the Amazon Elastic Compute Cloud User Guide.
  /// [deprecationTime] Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  /// [description] Longer, human-readable description for the AMI.
  /// [destinationOutpostArn] ARN of the Outpost to which to copy the AMI.
  /// [ebsBlockDevices] Nested block describing an EBS block device that should be
  /// [enaSupport] Whether enhanced networking with ENA is enabled. Defaults to `false`.
  /// [encrypted] Whether the destination snapshots of the copied image should be encrypted. Defaults to `false`
  /// [ephemeralBlockDevices] Nested block describing an ephemeral block device that
  /// [hypervisor] Optional.
  /// [imageLocation] Path to an S3 object containing an image manifest, e.g., created
  /// [imageOwnerAlias] Optional.
  /// [imageType] Optional.
  /// [imdsSupport] If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to `v2.0`. For more information, see [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration).
  /// [kernelId] ID of the kernel image (AKI) that will be used as the paravirtual
  /// [kmsKeyId] Full ARN of the KMS Key to use when encrypting the snapshots of an image during a copy operation. If not specified, then the default AWS KMS Key will be used
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
  /// [sourceAmiId] Id of the AMI to copy. This id must be valid in the region
  /// [sourceAmiRegion] Region from which the AMI will be copied. This may be the
  /// [sriovNetSupport] When set to "simple" (the default), enables enhanced networking
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [tpmSupport] If the image is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the Amazon Elastic Compute Cloud User Guide.
  /// [uefiData] Base64 representation of the non-volatile UEFI variable store.
  /// [usageOperation] Optional.
  /// [virtualizationType] Keyword to choose what virtualization mode created instances
  AmiCopyState({
    pulumi.Output<String>? architecture,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? bootMode,
    pulumi.Output<String>? deprecationTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationOutpostArn,
    pulumi.Output<List<AmiCopyEbsBlockDevice>>? ebsBlockDevices,
    pulumi.Output<bool>? enaSupport,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<List<AmiCopyEphemeralBlockDevice>>? ephemeralBlockDevices,
    pulumi.Output<String>? hypervisor,
    pulumi.Output<String>? imageLocation,
    pulumi.Output<String>? imageOwnerAlias,
    pulumi.Output<String>? imageType,
    pulumi.Output<String>? imdsSupport,
    pulumi.Output<String>? kernelId,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? lastLaunchedTime,
    pulumi.Output<bool>? manageEbsSnapshots,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? platformDetails,
    pulumi.Output<bool>? public,
    pulumi.Output<String>? ramdiskId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? rootDeviceName,
    pulumi.Output<String>? rootSnapshotId,
    pulumi.Output<String>? sourceAmiId,
    pulumi.Output<String>? sourceAmiRegion,
    pulumi.Output<String>? sriovNetSupport,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? tpmSupport,
    pulumi.Output<String>? uefiData,
    pulumi.Output<String>? usageOperation,
    pulumi.Output<String>? virtualizationType,
  }) :
      architecture = pulumi.Input.asOptionalInput<String>(architecture),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bootMode = pulumi.Input.asOptionalInput<String>(bootMode),
      deprecationTime = pulumi.Input.asOptionalInput<String>(deprecationTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationOutpostArn = pulumi.Input.asOptionalInput<String>(destinationOutpostArn),
      ebsBlockDevices = pulumi.Input.asOptionalInput<List<AmiCopyEbsBlockDevice>>(ebsBlockDevices),
      enaSupport = pulumi.Input.asOptionalInput<bool>(enaSupport),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      ephemeralBlockDevices = pulumi.Input.asOptionalInput<List<AmiCopyEphemeralBlockDevice>>(ephemeralBlockDevices),
      hypervisor = pulumi.Input.asOptionalInput<String>(hypervisor),
      imageLocation = pulumi.Input.asOptionalInput<String>(imageLocation),
      imageOwnerAlias = pulumi.Input.asOptionalInput<String>(imageOwnerAlias),
      imageType = pulumi.Input.asOptionalInput<String>(imageType),
      imdsSupport = pulumi.Input.asOptionalInput<String>(imdsSupport),
      kernelId = pulumi.Input.asOptionalInput<String>(kernelId),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      lastLaunchedTime = pulumi.Input.asOptionalInput<String>(lastLaunchedTime),
      manageEbsSnapshots = pulumi.Input.asOptionalInput<bool>(manageEbsSnapshots),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      platformDetails = pulumi.Input.asOptionalInput<String>(platformDetails),
      public = pulumi.Input.asOptionalInput<bool>(public),
      ramdiskId = pulumi.Input.asOptionalInput<String>(ramdiskId),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootDeviceName = pulumi.Input.asOptionalInput<String>(rootDeviceName),
      rootSnapshotId = pulumi.Input.asOptionalInput<String>(rootSnapshotId),
      sourceAmiId = pulumi.Input.asOptionalInput<String>(sourceAmiId),
      sourceAmiRegion = pulumi.Input.asOptionalInput<String>(sourceAmiRegion),
      sriovNetSupport = pulumi.Input.asOptionalInput<String>(sriovNetSupport),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tpmSupport = pulumi.Input.asOptionalInput<String>(tpmSupport),
      uefiData = pulumi.Input.asOptionalInput<String>(uefiData),
      usageOperation = pulumi.Input.asOptionalInput<String>(usageOperation),
      virtualizationType = pulumi.Input.asOptionalInput<String>(virtualizationType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'arn': ?arn,
      'bootMode': ?bootMode,
      'deprecationTime': ?deprecationTime,
      'description': ?description,
      'destinationOutpostArn': ?destinationOutpostArn,
      'ebsBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<AmiCopyEbsBlockDevice>, List<Map<String, dynamic>>>(ebsBlockDevices, (value) => pulumi.Input.encodeList<AmiCopyEbsBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enaSupport': ?enaSupport,
      'encrypted': ?encrypted,
      'ephemeralBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<AmiCopyEphemeralBlockDevice>, List<Map<String, dynamic>>>(ephemeralBlockDevices, (value) => pulumi.Input.encodeList<AmiCopyEphemeralBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hypervisor': ?hypervisor,
      'imageLocation': ?imageLocation,
      'imageOwnerAlias': ?imageOwnerAlias,
      'imageType': ?imageType,
      'imdsSupport': ?imdsSupport,
      'kernelId': ?kernelId,
      'kmsKeyId': ?kmsKeyId,
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
      'sourceAmiId': ?sourceAmiId,
      'sourceAmiRegion': ?sourceAmiRegion,
      'sriovNetSupport': ?sriovNetSupport,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tpmSupport': ?tpmSupport,
      'uefiData': ?uefiData,
      'usageOperation': ?usageOperation,
      'virtualizationType': ?virtualizationType,
    };
  }

  factory AmiCopyState.fromMap(Map<String, dynamic> map) {
    return AmiCopyState(
      architecture: map['architecture'] == null ? null : pulumi.Output.create<String>(map['architecture'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bootMode: map['bootMode'] == null ? null : pulumi.Output.create<String>(map['bootMode'] as String),
      deprecationTime: map['deprecationTime'] == null ? null : pulumi.Output.create<String>(map['deprecationTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationOutpostArn: map['destinationOutpostArn'] == null ? null : pulumi.Output.create<String>(map['destinationOutpostArn'] as String),
      ebsBlockDevices: map['ebsBlockDevices'] == null ? null : pulumi.Output.create<List<AmiCopyEbsBlockDevice>>(pulumi.Input.decodeList<AmiCopyEbsBlockDevice>(map['ebsBlockDevices'], (value) => AmiCopyEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>()))),
      enaSupport: map['enaSupport'] == null ? null : pulumi.Output.create<bool>(map['enaSupport'] as bool),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      ephemeralBlockDevices: map['ephemeralBlockDevices'] == null ? null : pulumi.Output.create<List<AmiCopyEphemeralBlockDevice>>(pulumi.Input.decodeList<AmiCopyEphemeralBlockDevice>(map['ephemeralBlockDevices'], (value) => AmiCopyEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>()))),
      hypervisor: map['hypervisor'] == null ? null : pulumi.Output.create<String>(map['hypervisor'] as String),
      imageLocation: map['imageLocation'] == null ? null : pulumi.Output.create<String>(map['imageLocation'] as String),
      imageOwnerAlias: map['imageOwnerAlias'] == null ? null : pulumi.Output.create<String>(map['imageOwnerAlias'] as String),
      imageType: map['imageType'] == null ? null : pulumi.Output.create<String>(map['imageType'] as String),
      imdsSupport: map['imdsSupport'] == null ? null : pulumi.Output.create<String>(map['imdsSupport'] as String),
      kernelId: map['kernelId'] == null ? null : pulumi.Output.create<String>(map['kernelId'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      lastLaunchedTime: map['lastLaunchedTime'] == null ? null : pulumi.Output.create<String>(map['lastLaunchedTime'] as String),
      manageEbsSnapshots: map['manageEbsSnapshots'] == null ? null : pulumi.Output.create<bool>(map['manageEbsSnapshots'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      platformDetails: map['platformDetails'] == null ? null : pulumi.Output.create<String>(map['platformDetails'] as String),
      public: map['public'] == null ? null : pulumi.Output.create<bool>(map['public'] as bool),
      ramdiskId: map['ramdiskId'] == null ? null : pulumi.Output.create<String>(map['ramdiskId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootDeviceName: map['rootDeviceName'] == null ? null : pulumi.Output.create<String>(map['rootDeviceName'] as String),
      rootSnapshotId: map['rootSnapshotId'] == null ? null : pulumi.Output.create<String>(map['rootSnapshotId'] as String),
      sourceAmiId: map['sourceAmiId'] == null ? null : pulumi.Output.create<String>(map['sourceAmiId'] as String),
      sourceAmiRegion: map['sourceAmiRegion'] == null ? null : pulumi.Output.create<String>(map['sourceAmiRegion'] as String),
      sriovNetSupport: map['sriovNetSupport'] == null ? null : pulumi.Output.create<String>(map['sriovNetSupport'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tpmSupport: map['tpmSupport'] == null ? null : pulumi.Output.create<String>(map['tpmSupport'] as String),
      uefiData: map['uefiData'] == null ? null : pulumi.Output.create<String>(map['uefiData'] as String),
      usageOperation: map['usageOperation'] == null ? null : pulumi.Output.create<String>(map['usageOperation'] as String),
      virtualizationType: map['virtualizationType'] == null ? null : pulumi.Output.create<String>(map['virtualizationType'] as String),
    );
  }
}

