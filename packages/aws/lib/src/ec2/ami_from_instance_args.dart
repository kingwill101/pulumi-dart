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
  final pulumi.Input<List<AmiFromInstanceEphemeralBlockDevice>>?
      ephemeralBlockDevices;

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
    String? deprecationTime,
    String? description,
    List<AmiFromInstanceEbsBlockDevice>? ebsBlockDevices,
    List<AmiFromInstanceEphemeralBlockDevice>? ephemeralBlockDevices,
    String? name,
    String? region,
    bool? snapshotWithoutReboot,
    required String sourceInstanceId,
    Map<String, String>? tags,
  })  : deprecationTime = pulumi.Input.asOptionalInput<String>(deprecationTime),
        description = pulumi.Input.asOptionalInput<String>(description),
        ebsBlockDevices =
            pulumi.Input.asOptionalInput<List<AmiFromInstanceEbsBlockDevice>>(
                ebsBlockDevices),
        ephemeralBlockDevices = pulumi.Input.asOptionalInput<
            List<AmiFromInstanceEphemeralBlockDevice>>(ephemeralBlockDevices),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        snapshotWithoutReboot =
            pulumi.Input.asOptionalInput<bool>(snapshotWithoutReboot),
        sourceInstanceId = pulumi.Input.asInput<String>(sourceInstanceId),
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
    final ebsBlockDevicesValue = ebsBlockDevices;
    if (ebsBlockDevicesValue != null) {
      map['ebsBlockDevices'] = pulumi.Input.mapOptionalInputValue<
              List<AmiFromInstanceEbsBlockDevice>, List<Map<String, dynamic>>>(
          ebsBlockDevicesValue,
          (value) => pulumi.Input.encodeList<AmiFromInstanceEbsBlockDevice,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final ephemeralBlockDevicesValue = ephemeralBlockDevices;
    if (ephemeralBlockDevicesValue != null) {
      map['ephemeralBlockDevices'] = pulumi.Input.mapOptionalInputValue<
              List<AmiFromInstanceEphemeralBlockDevice>,
              List<Map<String, dynamic>>>(
          ephemeralBlockDevicesValue,
          (value) => pulumi.Input.encodeList<
              AmiFromInstanceEphemeralBlockDevice,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snapshotWithoutRebootValue = snapshotWithoutReboot;
    if (snapshotWithoutRebootValue != null) {
      map['snapshotWithoutReboot'] = snapshotWithoutRebootValue;
    }
    map['sourceInstanceId'] = sourceInstanceId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AmiFromInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AmiFromInstanceArgs(
      deprecationTime: map['deprecationTime'] == null
          ? null
          : map['deprecationTime'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      ebsBlockDevices: map['ebsBlockDevices'] == null
          ? null
          : pulumi.Input.decodeList<AmiFromInstanceEbsBlockDevice>(
              map['ebsBlockDevices'],
              (value) => AmiFromInstanceEbsBlockDevice.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ephemeralBlockDevices: map['ephemeralBlockDevices'] == null
          ? null
          : pulumi.Input.decodeList<AmiFromInstanceEphemeralBlockDevice>(
              map['ephemeralBlockDevices'],
              (value) => AmiFromInstanceEphemeralBlockDevice.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      snapshotWithoutReboot: map['snapshotWithoutReboot'] == null
          ? null
          : map['snapshotWithoutReboot'] as bool,
      sourceInstanceId: map['sourceInstanceId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
