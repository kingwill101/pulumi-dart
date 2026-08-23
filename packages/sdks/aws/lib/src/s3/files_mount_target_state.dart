// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_mount_target_timeouts.dart';

/// Input properties used for looking up and filtering FilesMountTarget resources.
class FilesMountTargetState {
  /// Availability Zone ID.
  final pulumi.Input<String>? availabilityZoneId;
  /// File system ID. Changing this value forces replacement.
  final pulumi.Input<String>? fileSystemId;
  /// IP address type.
  final pulumi.Input<String>? ipAddressType;
  /// IPv4 address.
  final pulumi.Input<String>? ipv4Address;
  /// IPv6 address.
  final pulumi.Input<String>? ipv6Address;
  /// Network interface ID.
  final pulumi.Input<String>? networkInterfaceId;
  /// AWS account ID of the owner.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Security group IDs.
  final pulumi.Input<List<String>>? securityGroups;
  /// Mount target status.
  final pulumi.Input<String>? status;
  /// Status message.
  final pulumi.Input<String>? statusMessage;
  /// Subnet ID. Changing this value forces replacement.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? subnetId;
  final pulumi.Input<FilesMountTargetTimeouts>? timeouts;
  /// VPC ID.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [FilesMountTargetState].
  /// [availabilityZoneId] Availability Zone ID.
  /// [fileSystemId] File system ID. Changing this value forces replacement.
  /// [ipAddressType] IP address type.
  /// [ipv4Address] IPv4 address.
  /// [ipv6Address] IPv6 address.
  /// [networkInterfaceId] Network interface ID.
  /// [ownerId] AWS account ID of the owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] Security group IDs.
  /// [status] Mount target status.
  /// [statusMessage] Status message.
  /// [subnetId] Subnet ID. Changing this value forces replacement.
  /// [timeouts] Optional.
  /// [vpcId] VPC ID.
  const FilesMountTargetState({
    this.availabilityZoneId,
    this.fileSystemId,
    this.ipAddressType,
    this.ipv4Address,
    this.ipv6Address,
    this.networkInterfaceId,
    this.ownerId,
    this.region,
    this.securityGroups,
    this.status,
    this.statusMessage,
    this.subnetId,
    this.timeouts,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': ?availabilityZoneId,
      'fileSystemId': ?fileSystemId,
      'ipAddressType': ?ipAddressType,
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'networkInterfaceId': ?networkInterfaceId,
      'ownerId': ?ownerId,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'subnetId': ?subnetId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FilesMountTargetTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory FilesMountTargetState.fromMap(Map<String, dynamic> map) {
    return FilesMountTargetState(
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4Address: (() { final guardedValue = map['ipv4Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilesMountTargetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
