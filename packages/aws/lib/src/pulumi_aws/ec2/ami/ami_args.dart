// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ami_ebs_block_device/ami_ebs_block_device.dart';
import '../ami_ephemeral_block_device/ami_ephemeral_block_device.dart';

/// The set of arguments for Ami.
class AmiArgs {
  /// Machine architecture for created instances. Defaults to <span pulumi-lang-nodejs="`x8664`" pulumi-lang-dotnet="`X8664`" pulumi-lang-go="`x8664`" pulumi-lang-python="`x86_64`" pulumi-lang-yaml="`x8664`" pulumi-lang-java="`x8664`">`x86_64`</span>.
  final Input<String>? architecture;

  /// Boot mode of the AMI. For more information, see [Boot modes](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in the Amazon Elastic Compute Cloud User Guide.
  final Input<String>? bootMode;

  /// Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final Input<String>? deprecationTime;

  /// Longer, human-readable description for the AMI.
  final Input<String>? description;

  /// Nested block describing an EBS block device that should be
  /// attached to created instances. The structure of this block is described below.
  final Input<List<AmiEbsBlockDevice>>? ebsBlockDevices;

  /// Whether enhanced networking with ENA is enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? enaSupport;

  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  final Input<List<AmiEphemeralBlockDevice>>? ephemeralBlockDevices;
  final Input<String>? imageLocation;

  /// If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to `v2.0`. For more information, see [Configure instance metadata options for new instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration).
  final Input<String>? imdsSupport;
  final Input<String>? kernelId;

  /// Region-unique name for the AMI.
  final Input<String>? name;
  final Input<String>? ramdiskId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the root device (for example, `/dev/sda1`, or `/dev/xvda`).
  final Input<String>? rootDeviceName;
  final Input<String>? sriovNetSupport;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// If the image is configured for NitroTPM support, the value is `v2.0`. For more information, see [NitroTPM](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in the Amazon Elastic Compute Cloud User Guide.
  final Input<String>? tpmSupport;

  /// Base64 representation of the non-volatile UEFI variable store.
  final Input<String>? uefiData;

  /// Keyword to choose what virtualization mode created instances
  /// will use. Can be either "paravirtual" (the default) or "hvm". The choice of virtualization type
  /// changes the set of further arguments that are required, as described below.
  final Input<String>? virtualizationType;

  AmiArgs({
    this.architecture,
    this.bootMode,
    this.deprecationTime,
    this.description,
    this.ebsBlockDevices,
    this.enaSupport,
    this.ephemeralBlockDevices,
    this.imageLocation,
    this.imdsSupport,
    this.kernelId,
    this.name,
    this.ramdiskId,
    this.region,
    this.rootDeviceName,
    this.sriovNetSupport,
    this.tags,
    this.tpmSupport,
    this.uefiData,
    this.virtualizationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final architectureValue = architecture;
    if (architectureValue != null) {
      map['architecture'] = architectureValue;
    }
    final bootModeValue = bootMode;
    if (bootModeValue != null) {
      map['bootMode'] = bootModeValue;
    }
    final deprecationTimeValue = deprecationTime;
    if (deprecationTimeValue != null) {
      map['deprecationTime'] = deprecationTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ebsBlockDevicesValue = ebsBlockDevices;
    if (ebsBlockDevicesValue != null) {
      map['ebsBlockDevices'] = Input.mapOptionalInputValue<
              List<AmiEbsBlockDevice>, List<Map<String, dynamic>>>(
          ebsBlockDevicesValue,
          (value) => Input.encodeList<AmiEbsBlockDevice, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final enaSupportValue = enaSupport;
    if (enaSupportValue != null) {
      map['enaSupport'] = enaSupportValue;
    }
    final ephemeralBlockDevicesValue = ephemeralBlockDevices;
    if (ephemeralBlockDevicesValue != null) {
      map['ephemeralBlockDevices'] = Input.mapOptionalInputValue<
              List<AmiEphemeralBlockDevice>, List<Map<String, dynamic>>>(
          ephemeralBlockDevicesValue,
          (value) =>
              Input.encodeList<AmiEphemeralBlockDevice, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final imageLocationValue = imageLocation;
    if (imageLocationValue != null) {
      map['imageLocation'] = imageLocationValue;
    }
    final imdsSupportValue = imdsSupport;
    if (imdsSupportValue != null) {
      map['imdsSupport'] = imdsSupportValue;
    }
    final kernelIdValue = kernelId;
    if (kernelIdValue != null) {
      map['kernelId'] = kernelIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final ramdiskIdValue = ramdiskId;
    if (ramdiskIdValue != null) {
      map['ramdiskId'] = ramdiskIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rootDeviceNameValue = rootDeviceName;
    if (rootDeviceNameValue != null) {
      map['rootDeviceName'] = rootDeviceNameValue;
    }
    final sriovNetSupportValue = sriovNetSupport;
    if (sriovNetSupportValue != null) {
      map['sriovNetSupport'] = sriovNetSupportValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tpmSupportValue = tpmSupport;
    if (tpmSupportValue != null) {
      map['tpmSupport'] = tpmSupportValue;
    }
    final uefiDataValue = uefiData;
    if (uefiDataValue != null) {
      map['uefiData'] = uefiDataValue;
    }
    final virtualizationTypeValue = virtualizationType;
    if (virtualizationTypeValue != null) {
      map['virtualizationType'] = virtualizationTypeValue;
    }
    return map;
  }

  factory AmiArgs.fromMap(Map<String, dynamic> map) {
    return AmiArgs(
      architecture: Input.asOptionalInput<String>(map['architecture']),
      bootMode: Input.asOptionalInput<String>(map['bootMode']),
      deprecationTime: Input.asOptionalInput<String>(map['deprecationTime']),
      description: Input.asOptionalInput<String>(map['description']),
      ebsBlockDevices: Input.asOptionalInput<List<AmiEbsBlockDevice>>(
          map['ebsBlockDevices']),
      enaSupport: Input.asOptionalInput<bool>(map['enaSupport']),
      ephemeralBlockDevices:
          Input.asOptionalInput<List<AmiEphemeralBlockDevice>>(
              map['ephemeralBlockDevices']),
      imageLocation: Input.asOptionalInput<String>(map['imageLocation']),
      imdsSupport: Input.asOptionalInput<String>(map['imdsSupport']),
      kernelId: Input.asOptionalInput<String>(map['kernelId']),
      name: Input.asOptionalInput<String>(map['name']),
      ramdiskId: Input.asOptionalInput<String>(map['ramdiskId']),
      region: Input.asOptionalInput<String>(map['region']),
      rootDeviceName: Input.asOptionalInput<String>(map['rootDeviceName']),
      sriovNetSupport: Input.asOptionalInput<String>(map['sriovNetSupport']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tpmSupport: Input.asOptionalInput<String>(map['tpmSupport']),
      uefiData: Input.asOptionalInput<String>(map['uefiData']),
      virtualizationType:
          Input.asOptionalInput<String>(map['virtualizationType']),
    );
  }
}
