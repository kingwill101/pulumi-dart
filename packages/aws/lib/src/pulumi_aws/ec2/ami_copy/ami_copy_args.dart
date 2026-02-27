// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ami_copy_ebs_block_device/ami_copy_ebs_block_device.dart';
import '../ami_copy_ephemeral_block_device/ami_copy_ephemeral_block_device.dart';

/// The set of arguments for AmiCopy.
class AmiCopyArgs {
  /// Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final Input<String>? deprecationTime;

  /// Longer, human-readable description for the AMI.
  final Input<String>? description;

  /// ARN of the Outpost to which to copy the AMI.
  /// Only specify this parameter when copying an AMI from an AWS Region to an Outpost. The AMI must be in the Region of the destination Outpost.
  final Input<String>? destinationOutpostArn;

  /// Nested block describing an EBS block device that should be
  /// attached to created instances. The structure of this block is described below.
  final Input<List<AmiCopyEbsBlockDevice>>? ebsBlockDevices;

  /// Whether the destination snapshots of the copied image should be encrypted. Defaults to `false`
  final Input<bool>? encrypted;

  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  final Input<List<AmiCopyEphemeralBlockDevice>>? ephemeralBlockDevices;

  /// Full ARN of the KMS Key to use when encrypting the snapshots of an image during a copy operation. If not specified, then the default AWS KMS Key will be used
  final Input<String>? kmsKeyId;

  /// Region-unique name for the AMI.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Id of the AMI to copy. This id must be valid in the region
  /// given by `source_ami_region`.
  final Input<String> sourceAmiId;

  /// Region from which the AMI will be copied. This may be the
  /// same as the AWS provider region in order to create a copy within the same region.
  final Input<String> sourceAmiRegion;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  AmiCopyArgs({
    this.deprecationTime,
    this.description,
    this.destinationOutpostArn,
    this.ebsBlockDevices,
    this.encrypted,
    this.ephemeralBlockDevices,
    this.kmsKeyId,
    this.name,
    this.region,
    required this.sourceAmiId,
    required this.sourceAmiRegion,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deprecationTimeValue = deprecationTime;
    if (deprecationTimeValue != null) {
      map['deprecationTime'] = deprecationTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final destinationOutpostArnValue = destinationOutpostArn;
    if (destinationOutpostArnValue != null) {
      map['destinationOutpostArn'] = destinationOutpostArnValue;
    }
    final ebsBlockDevicesValue = ebsBlockDevices;
    if (ebsBlockDevicesValue != null) {
      map['ebsBlockDevices'] = Input.mapOptionalInputValue<
              List<AmiCopyEbsBlockDevice>, List<Map<String, dynamic>>>(
          ebsBlockDevicesValue,
          (value) =>
              Input.encodeList<AmiCopyEbsBlockDevice, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final encryptedValue = encrypted;
    if (encryptedValue != null) {
      map['encrypted'] = encryptedValue;
    }
    final ephemeralBlockDevicesValue = ephemeralBlockDevices;
    if (ephemeralBlockDevicesValue != null) {
      map['ephemeralBlockDevices'] = Input.mapOptionalInputValue<
              List<AmiCopyEphemeralBlockDevice>, List<Map<String, dynamic>>>(
          ephemeralBlockDevicesValue,
          (value) => Input.encodeList<AmiCopyEphemeralBlockDevice,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sourceAmiId'] = sourceAmiId;
    map['sourceAmiRegion'] = sourceAmiRegion;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AmiCopyArgs.fromMap(Map<String, dynamic> map) {
    return AmiCopyArgs(
      deprecationTime: Input.asOptionalInput<String>(map['deprecationTime']),
      description: Input.asOptionalInput<String>(map['description']),
      destinationOutpostArn:
          Input.asOptionalInput<String>(map['destinationOutpostArn']),
      ebsBlockDevices: Input.asOptionalInput<List<AmiCopyEbsBlockDevice>>(
          map['ebsBlockDevices']),
      encrypted: Input.asOptionalInput<bool>(map['encrypted']),
      ephemeralBlockDevices:
          Input.asOptionalInput<List<AmiCopyEphemeralBlockDevice>>(
              map['ephemeralBlockDevices']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceAmiId: Input.asInput<String>(map['sourceAmiId']),
      sourceAmiRegion: Input.asInput<String>(map['sourceAmiRegion']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
