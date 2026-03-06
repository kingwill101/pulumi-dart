// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vsc_mount_point_instance_vsc.dart';

class VscMountPointInstance {
  /// The ID of the ECS instance to which the HDFS file system is mounted.
  final pulumi.Input<String>? instanceId;
  /// The status of the ECS instance on which the HDFS file system is mounted.
  final pulumi.Input<String>? status;
  /// The VSC list of mounted HDFS file systems.
  final pulumi.Input<List<VscMountPointInstanceVsc>>? vscs;

  /// Creates a new [VscMountPointInstance].
  /// [instanceId] The ID of the ECS instance to which the HDFS file system is mounted.
  /// [status] The status of the ECS instance on which the HDFS file system is mounted.
  /// [vscs] The VSC list of mounted HDFS file systems.
  const VscMountPointInstance({
    this.instanceId,
    this.status,
    this.vscs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'status': ?status,
      'vscs': ?pulumi.Input.mapOptionalInputValue<List<VscMountPointInstanceVsc>, List<Map<String, dynamic>>>(vscs, (value) => pulumi.Input.encodeList<VscMountPointInstanceVsc, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VscMountPointInstance.fromMap(Map<String, dynamic> map) {
    return VscMountPointInstance(
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vscs: (() { final guardedValue = map['vscs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VscMountPointInstanceVsc>(guardedValue, (value) => VscMountPointInstanceVsc.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

