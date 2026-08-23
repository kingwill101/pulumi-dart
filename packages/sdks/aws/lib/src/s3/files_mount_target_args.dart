// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'files_mount_target_timeouts.dart';

/// {@template pulumi_s3_files_mount_target_files_mount_target_args_doc}
/// The set of arguments for FilesMountTarget.
/// {@endtemplate}
/// {@macro pulumi_s3_files_mount_target_files_mount_target_args_doc}
class FilesMountTargetArgs {
  /// File system ID. Changing this value forces replacement.
  final pulumi.Input<String> fileSystemId;
  /// IP address type.
  final pulumi.Input<String>? ipAddressType;
  /// IPv4 address.
  final pulumi.Input<String>? ipv4Address;
  /// IPv6 address.
  final pulumi.Input<String>? ipv6Address;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Security group IDs.
  final pulumi.Input<List<String>>? securityGroups;
  /// Subnet ID. Changing this value forces replacement.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> subnetId;
  final pulumi.Input<FilesMountTargetTimeouts>? timeouts;

  /// Creates a new [FilesMountTargetArgs].
  /// [fileSystemId] File system ID. Changing this value forces replacement.
  /// [ipAddressType] IP address type.
  /// [ipv4Address] IPv4 address.
  /// [ipv6Address] IPv6 address.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] Security group IDs.
  /// [subnetId] Subnet ID. Changing this value forces replacement.
  /// [timeouts] Optional.
  const FilesMountTargetArgs({
    required this.fileSystemId,
    this.ipAddressType,
    this.ipv4Address,
    this.ipv6Address,
    this.region,
    this.securityGroups,
    required this.subnetId,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'ipAddressType': ?ipAddressType,
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'subnetId': subnetId,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FilesMountTargetTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FilesMountTargetArgs.fromMap(Map<String, dynamic> map) {
    return FilesMountTargetArgs(
      fileSystemId: pulumi.Input.fromValue(map['fileSystemId'] as String),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4Address: (() { final guardedValue = map['ipv4Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FilesMountTargetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
