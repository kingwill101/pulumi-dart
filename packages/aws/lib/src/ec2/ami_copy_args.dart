// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ami_copy_ebs_block_device.dart';
import 'ami_copy_ephemeral_block_device.dart';

/// {@template pulumi_ec2_ami_copy_ami_copy_args_doc}
/// The set of arguments for AmiCopy.
/// {@endtemplate}
/// {@macro pulumi_ec2_ami_copy_ami_copy_args_doc}
class AmiCopyArgs {
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

  /// Whether the destination snapshots of the copied image should be encrypted. Defaults to `false`
  final pulumi.Input<bool>? encrypted;

  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  final pulumi.Input<List<AmiCopyEphemeralBlockDevice>>? ephemeralBlockDevices;

  /// Full ARN of the KMS Key to use when encrypting the snapshots of an image during a copy operation. If not specified, then the default AWS KMS Key will be used
  final pulumi.Input<String>? kmsKeyId;

  /// Region-unique name for the AMI.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Id of the AMI to copy. This id must be valid in the region
  /// given by `source_ami_region`.
  final pulumi.Input<String> sourceAmiId;

  /// Region from which the AMI will be copied. This may be the
  /// same as the AWS provider region in order to create a copy within the same region.
  final pulumi.Input<String> sourceAmiRegion;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AmiCopyArgs].
  /// [deprecationTime] Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  /// [description] Longer, human-readable description for the AMI.
  /// [destinationOutpostArn] ARN of the Outpost to which to copy the AMI.
  /// [ebsBlockDevices] Nested block describing an EBS block device that should be
  /// [encrypted] Whether the destination snapshots of the copied image should be encrypted. Defaults to `false`
  /// [ephemeralBlockDevices] Nested block describing an ephemeral block device that
  /// [kmsKeyId] Full ARN of the KMS Key to use when encrypting the snapshots of an image during a copy operation. If not specified, then the default AWS KMS Key will be used
  /// [name] Region-unique name for the AMI.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceAmiId] Id of the AMI to copy. This id must be valid in the region
  /// [sourceAmiRegion] Region from which the AMI will be copied. This may be the
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AmiCopyArgs({
    String? deprecationTime,
    String? description,
    String? destinationOutpostArn,
    List<AmiCopyEbsBlockDevice>? ebsBlockDevices,
    bool? encrypted,
    List<AmiCopyEphemeralBlockDevice>? ephemeralBlockDevices,
    String? kmsKeyId,
    String? name,
    String? region,
    required String sourceAmiId,
    required String sourceAmiRegion,
    Map<String, String>? tags,
  })  : deprecationTime = pulumi.Input.asOptionalInput<String>(deprecationTime),
        description = pulumi.Input.asOptionalInput<String>(description),
        destinationOutpostArn =
            pulumi.Input.asOptionalInput<String>(destinationOutpostArn),
        ebsBlockDevices =
            pulumi.Input.asOptionalInput<List<AmiCopyEbsBlockDevice>>(
                ebsBlockDevices),
        encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
        ephemeralBlockDevices =
            pulumi.Input.asOptionalInput<List<AmiCopyEphemeralBlockDevice>>(
                ephemeralBlockDevices),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        sourceAmiId = pulumi.Input.asInput<String>(sourceAmiId),
        sourceAmiRegion = pulumi.Input.asInput<String>(sourceAmiRegion),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      map['ebsBlockDevices'] = pulumi.Input.mapOptionalInputValue<
              List<AmiCopyEbsBlockDevice>, List<Map<String, dynamic>>>(
          ebsBlockDevicesValue,
          (value) => pulumi.Input.encodeList<AmiCopyEbsBlockDevice,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final encryptedValue = encrypted;
    if (encryptedValue != null) {
      map['encrypted'] = encryptedValue;
    }
    final ephemeralBlockDevicesValue = ephemeralBlockDevices;
    if (ephemeralBlockDevicesValue != null) {
      map['ephemeralBlockDevices'] = pulumi.Input.mapOptionalInputValue<
              List<AmiCopyEphemeralBlockDevice>, List<Map<String, dynamic>>>(
          ephemeralBlockDevicesValue,
          (value) => pulumi.Input.encodeList<AmiCopyEphemeralBlockDevice,
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
      deprecationTime: map['deprecationTime'] == null
          ? null
          : map['deprecationTime'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      destinationOutpostArn: map['destinationOutpostArn'] == null
          ? null
          : map['destinationOutpostArn'] as String,
      ebsBlockDevices: map['ebsBlockDevices'] == null
          ? null
          : pulumi.Input.decodeList<AmiCopyEbsBlockDevice>(
              map['ebsBlockDevices'],
              (value) => AmiCopyEbsBlockDevice.fromMap(
                  (value as Map).cast<String, dynamic>())),
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      ephemeralBlockDevices: map['ephemeralBlockDevices'] == null
          ? null
          : pulumi.Input.decodeList<AmiCopyEphemeralBlockDevice>(
              map['ephemeralBlockDevices'],
              (value) => AmiCopyEphemeralBlockDevice.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      sourceAmiId: map['sourceAmiId'] as String,
      sourceAmiRegion: map['sourceAmiRegion'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
