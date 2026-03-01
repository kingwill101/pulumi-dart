// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ami_ebs_block_device.dart';
import 'ami_ephemeral_block_device.dart';

/// {@template pulumi_ec2_ami_ami_args_doc}
/// The set of arguments for Ami.
/// {@endtemplate}
/// {@macro pulumi_ec2_ami_ami_args_doc}
class AmiArgs {
  /// Machine architecture for created instances. Defaults to `x86_64`.
  final pulumi.Input<String>? architecture;
  /// Boot mode of the AMI. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the Amazon Elastic Compute Cloud User Guide.
  final pulumi.Input<String>? bootMode;
  /// Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? deprecationTime;
  /// Longer, human-readable description for the AMI.
  final pulumi.Input<String>? description;
  /// Nested block describing an EBS block device that should be
  /// attached to created instances. The structure of this block is described below.
  final pulumi.Input<List<AmiEbsBlockDevice>>? ebsBlockDevices;
  /// Whether enhanced networking with ENA is enabled. Defaults to `false`.
  final pulumi.Input<bool>? enaSupport;
  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  final pulumi.Input<List<AmiEphemeralBlockDevice>>? ephemeralBlockDevices;
  final pulumi.Input<String>? imageLocation;
  /// If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to `v2.0`. For more information, see [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration).
  final pulumi.Input<String>? imdsSupport;
  final pulumi.Input<String>? kernelId;
  /// Region-unique name for the AMI.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? ramdiskId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the root device (for example, `/dev/sda1`, or `/dev/xvda`).
  final pulumi.Input<String>? rootDeviceName;
  final pulumi.Input<String>? sriovNetSupport;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// If the image is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the Amazon Elastic Compute Cloud User Guide.
  final pulumi.Input<String>? tpmSupport;
  /// Base64 representation of the non-volatile UEFI variable store.
  final pulumi.Input<String>? uefiData;
  /// Keyword to choose what virtualization mode created instances
  /// will use. Can be either "paravirtual" (the default) or "hvm". The choice of virtualization type
  /// changes the set of further arguments that are required, as described below.
  final pulumi.Input<String>? virtualizationType;

  /// Creates a new [AmiArgs].
  /// [architecture] Machine architecture for created instances. Defaults to `x86_64`.
  /// [bootMode] Boot mode of the AMI. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the Amazon Elastic Compute Cloud User Guide.
  /// [deprecationTime] Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  /// [description] Longer, human-readable description for the AMI.
  /// [ebsBlockDevices] Nested block describing an EBS block device that should be
  /// [enaSupport] Whether enhanced networking with ENA is enabled. Defaults to `false`.
  /// [ephemeralBlockDevices] Nested block describing an ephemeral block device that
  /// [imageLocation] Optional.
  /// [imdsSupport] If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to `v2.0`. For more information, see [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration).
  /// [kernelId] Optional.
  /// [name] Region-unique name for the AMI.
  /// [ramdiskId] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootDeviceName] Name of the root device (for example, `/dev/sda1`, or `/dev/xvda`).
  /// [sriovNetSupport] Optional.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tpmSupport] If the image is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the Amazon Elastic Compute Cloud User Guide.
  /// [uefiData] Base64 representation of the non-volatile UEFI variable store.
  /// [virtualizationType] Keyword to choose what virtualization mode created instances
  AmiArgs({
    pulumi.Output<String>? architecture,
    pulumi.Output<String>? bootMode,
    pulumi.Output<String>? deprecationTime,
    pulumi.Output<String>? description,
    pulumi.Output<List<AmiEbsBlockDevice>>? ebsBlockDevices,
    pulumi.Output<bool>? enaSupport,
    pulumi.Output<List<AmiEphemeralBlockDevice>>? ephemeralBlockDevices,
    pulumi.Output<String>? imageLocation,
    pulumi.Output<String>? imdsSupport,
    pulumi.Output<String>? kernelId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ramdiskId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? rootDeviceName,
    pulumi.Output<String>? sriovNetSupport,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tpmSupport,
    pulumi.Output<String>? uefiData,
    pulumi.Output<String>? virtualizationType,
  }) :
      architecture = pulumi.Input.asOptionalInput<String>(architecture),
      bootMode = pulumi.Input.asOptionalInput<String>(bootMode),
      deprecationTime = pulumi.Input.asOptionalInput<String>(deprecationTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      ebsBlockDevices = pulumi.Input.asOptionalInput<List<AmiEbsBlockDevice>>(ebsBlockDevices),
      enaSupport = pulumi.Input.asOptionalInput<bool>(enaSupport),
      ephemeralBlockDevices = pulumi.Input.asOptionalInput<List<AmiEphemeralBlockDevice>>(ephemeralBlockDevices),
      imageLocation = pulumi.Input.asOptionalInput<String>(imageLocation),
      imdsSupport = pulumi.Input.asOptionalInput<String>(imdsSupport),
      kernelId = pulumi.Input.asOptionalInput<String>(kernelId),
      name = pulumi.Input.asOptionalInput<String>(name),
      ramdiskId = pulumi.Input.asOptionalInput<String>(ramdiskId),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootDeviceName = pulumi.Input.asOptionalInput<String>(rootDeviceName),
      sriovNetSupport = pulumi.Input.asOptionalInput<String>(sriovNetSupport),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tpmSupport = pulumi.Input.asOptionalInput<String>(tpmSupport),
      uefiData = pulumi.Input.asOptionalInput<String>(uefiData),
      virtualizationType = pulumi.Input.asOptionalInput<String>(virtualizationType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'bootMode': ?bootMode,
      'deprecationTime': ?deprecationTime,
      'description': ?description,
      'ebsBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<AmiEbsBlockDevice>, List<Map<String, dynamic>>>(ebsBlockDevices, (value) => pulumi.Input.encodeList<AmiEbsBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enaSupport': ?enaSupport,
      'ephemeralBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<AmiEphemeralBlockDevice>, List<Map<String, dynamic>>>(ephemeralBlockDevices, (value) => pulumi.Input.encodeList<AmiEphemeralBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageLocation': ?imageLocation,
      'imdsSupport': ?imdsSupport,
      'kernelId': ?kernelId,
      'name': ?name,
      'ramdiskId': ?ramdiskId,
      'region': ?region,
      'rootDeviceName': ?rootDeviceName,
      'sriovNetSupport': ?sriovNetSupport,
      'tags': ?tags,
      'tpmSupport': ?tpmSupport,
      'uefiData': ?uefiData,
      'virtualizationType': ?virtualizationType,
    };
  }

  factory AmiArgs.fromMap(Map<String, dynamic> map) {
    return AmiArgs(
      architecture: map['architecture'] == null ? null : pulumi.Output.create<String>(map['architecture'] as String),
      bootMode: map['bootMode'] == null ? null : pulumi.Output.create<String>(map['bootMode'] as String),
      deprecationTime: map['deprecationTime'] == null ? null : pulumi.Output.create<String>(map['deprecationTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ebsBlockDevices: map['ebsBlockDevices'] == null ? null : pulumi.Output.create<List<AmiEbsBlockDevice>>(pulumi.Input.decodeList<AmiEbsBlockDevice>(map['ebsBlockDevices'], (value) => AmiEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>()))),
      enaSupport: map['enaSupport'] == null ? null : pulumi.Output.create<bool>(map['enaSupport'] as bool),
      ephemeralBlockDevices: map['ephemeralBlockDevices'] == null ? null : pulumi.Output.create<List<AmiEphemeralBlockDevice>>(pulumi.Input.decodeList<AmiEphemeralBlockDevice>(map['ephemeralBlockDevices'], (value) => AmiEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>()))),
      imageLocation: map['imageLocation'] == null ? null : pulumi.Output.create<String>(map['imageLocation'] as String),
      imdsSupport: map['imdsSupport'] == null ? null : pulumi.Output.create<String>(map['imdsSupport'] as String),
      kernelId: map['kernelId'] == null ? null : pulumi.Output.create<String>(map['kernelId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ramdiskId: map['ramdiskId'] == null ? null : pulumi.Output.create<String>(map['ramdiskId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootDeviceName: map['rootDeviceName'] == null ? null : pulumi.Output.create<String>(map['rootDeviceName'] as String),
      sriovNetSupport: map['sriovNetSupport'] == null ? null : pulumi.Output.create<String>(map['sriovNetSupport'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tpmSupport: map['tpmSupport'] == null ? null : pulumi.Output.create<String>(map['tpmSupport'] as String),
      uefiData: map['uefiData'] == null ? null : pulumi.Output.create<String>(map['uefiData'] as String),
      virtualizationType: map['virtualizationType'] == null ? null : pulumi.Output.create<String>(map['virtualizationType'] as String),
    );
  }
}

