// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ami_from_instance_ebs_block_device.dart';
import 'ami_from_instance_ephemeral_block_device.dart';

/// {@template pulumi_ec2_ami_from_instance_ami_from_instance_args_doc}
/// The set of arguments for AmiFromInstance.
/// {@endtemplate}
/// {@macro pulumi_ec2_ami_from_instance_ami_from_instance_args_doc}
class AmiFromInstanceArgs {
  /// Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final pulumi.Input<String>? deprecationTime;
  /// Longer, human-readable description for the AMI.
  final pulumi.Input<String>? description;
  /// Nested block describing an EBS block device that should be
  /// attached to created instances. The structure of this block is described below.
  final pulumi.Input<List<AmiFromInstanceEbsBlockDevice>>? ebsBlockDevices;
  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  final pulumi.Input<List<AmiFromInstanceEphemeralBlockDevice>>? ephemeralBlockDevices;
  /// Region-unique name for the AMI.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Boolean that overrides the behavior of stopping
  /// the instance before snapshotting. This is risky since it may cause a snapshot of an
  /// inconsistent filesystem state, but can be used to avoid downtime if the user otherwise
  /// guarantees that no filesystem writes will be underway at the time of snapshot.
  final pulumi.Input<bool>? snapshotWithoutReboot;
  /// ID of the instance to use as the basis of the AMI.
  final pulumi.Input<String> sourceInstanceId;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AmiFromInstanceArgs].
  /// [deprecationTime] Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  /// [description] Longer, human-readable description for the AMI.
  /// [ebsBlockDevices] Nested block describing an EBS block device that should be
  /// [ephemeralBlockDevices] Nested block describing an ephemeral block device that
  /// [name] Region-unique name for the AMI.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [snapshotWithoutReboot] Boolean that overrides the behavior of stopping
  /// [sourceInstanceId] ID of the instance to use as the basis of the AMI.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AmiFromInstanceArgs({
    this.deprecationTime,
    this.description,
    this.ebsBlockDevices,
    this.ephemeralBlockDevices,
    this.name,
    this.region,
    this.snapshotWithoutReboot,
    required this.sourceInstanceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deprecationTime': ?deprecationTime,
      'description': ?description,
      'ebsBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<AmiFromInstanceEbsBlockDevice>, List<Map<String, dynamic>>>(ebsBlockDevices, (value) => pulumi.Input.encodeList<AmiFromInstanceEbsBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ephemeralBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<AmiFromInstanceEphemeralBlockDevice>, List<Map<String, dynamic>>>(ephemeralBlockDevices, (value) => pulumi.Input.encodeList<AmiFromInstanceEphemeralBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'snapshotWithoutReboot': ?snapshotWithoutReboot,
      'sourceInstanceId': sourceInstanceId,
      'tags': ?tags,
    };
  }

  factory AmiFromInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AmiFromInstanceArgs(
      deprecationTime: (() { final guardedValue = map['deprecationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebsBlockDevices: (() { final guardedValue = map['ebsBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AmiFromInstanceEbsBlockDevice>(guardedValue, (value) => AmiFromInstanceEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ephemeralBlockDevices: (() { final guardedValue = map['ephemeralBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AmiFromInstanceEphemeralBlockDevice>(guardedValue, (value) => AmiFromInstanceEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotWithoutReboot: (() { final guardedValue = map['snapshotWithoutReboot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceInstanceId: pulumi.Input.fromValue(map['sourceInstanceId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

