// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ami_from_instance_ebs_block_device/ami_from_instance_ebs_block_device.dart';
import '../ami_from_instance_ephemeral_block_device/ami_from_instance_ephemeral_block_device.dart';

/// The set of arguments for AmiFromInstance.
class AmiFromInstanceArgs {
  /// Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: [RFC3339 time string](https://tools.ietf.org/html/rfc3339#section-5.8) (`YYYY-MM-DDTHH:MM:SSZ`)
  final Input<String>? deprecationTime;

  /// Longer, human-readable description for the AMI.
  final Input<String>? description;

  /// Nested block describing an EBS block device that should be
  /// attached to created instances. The structure of this block is described below.
  final Input<List<AmiFromInstanceEbsBlockDevice>>? ebsBlockDevices;

  /// Nested block describing an ephemeral block device that
  /// should be attached to created instances. The structure of this block is described below.
  final Input<List<AmiFromInstanceEphemeralBlockDevice>>? ephemeralBlockDevices;

  /// Region-unique name for the AMI.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Boolean that overrides the behavior of stopping
  /// the instance before snapshotting. This is risky since it may cause a snapshot of an
  /// inconsistent filesystem state, but can be used to avoid downtime if the user otherwise
  /// guarantees that no filesystem writes will be underway at the time of snapshot.
  final Input<bool>? snapshotWithoutReboot;

  /// ID of the instance to use as the basis of the AMI.
  final Input<String> sourceInstanceId;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['ebsBlockDevices'] = Input.mapOptionalInputValue<
              List<AmiFromInstanceEbsBlockDevice>, List<Map<String, dynamic>>>(
          ebsBlockDevicesValue,
          (value) => Input.encodeList<AmiFromInstanceEbsBlockDevice,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final ephemeralBlockDevicesValue = ephemeralBlockDevices;
    if (ephemeralBlockDevicesValue != null) {
      map['ephemeralBlockDevices'] = Input.mapOptionalInputValue<
              List<AmiFromInstanceEphemeralBlockDevice>,
              List<Map<String, dynamic>>>(
          ephemeralBlockDevicesValue,
          (value) => Input.encodeList<AmiFromInstanceEphemeralBlockDevice,
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
      deprecationTime: Input.asOptionalInput<String>(map['deprecationTime']),
      description: Input.asOptionalInput<String>(map['description']),
      ebsBlockDevices:
          Input.asOptionalInput<List<AmiFromInstanceEbsBlockDevice>>(
              map['ebsBlockDevices']),
      ephemeralBlockDevices:
          Input.asOptionalInput<List<AmiFromInstanceEphemeralBlockDevice>>(
              map['ephemeralBlockDevices']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      snapshotWithoutReboot:
          Input.asOptionalInput<bool>(map['snapshotWithoutReboot']),
      sourceInstanceId: Input.asInput<String>(map['sourceInstanceId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
