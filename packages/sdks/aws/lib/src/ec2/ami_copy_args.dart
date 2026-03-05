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
    return <String, dynamic>{
      'deprecationTime': ?deprecationTime,
      'description': ?description,
      'destinationOutpostArn': ?destinationOutpostArn,
      'ebsBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<AmiCopyEbsBlockDevice>, List<Map<String, dynamic>>>(ebsBlockDevices, (value) => pulumi.Input.encodeList<AmiCopyEbsBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encrypted': ?encrypted,
      'ephemeralBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<AmiCopyEphemeralBlockDevice>, List<Map<String, dynamic>>>(ephemeralBlockDevices, (value) => pulumi.Input.encodeList<AmiCopyEphemeralBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'region': ?region,
      'sourceAmiId': sourceAmiId,
      'sourceAmiRegion': sourceAmiRegion,
      'tags': ?tags,
    };
  }

  factory AmiCopyArgs.fromMap(Map<String, dynamic> map) {
    return AmiCopyArgs(
      deprecationTime: (() { final guardedValue = map['deprecationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationOutpostArn: (() { final guardedValue = map['destinationOutpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebsBlockDevices: (() { final guardedValue = map['ebsBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AmiCopyEbsBlockDevice>(guardedValue, (value) => AmiCopyEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ephemeralBlockDevices: (() { final guardedValue = map['ephemeralBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AmiCopyEphemeralBlockDevice>(guardedValue, (value) => AmiCopyEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceAmiId: pulumi.Input.fromValue(map['sourceAmiId'] as String),
      sourceAmiRegion: pulumi.Input.fromValue(map['sourceAmiRegion'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

