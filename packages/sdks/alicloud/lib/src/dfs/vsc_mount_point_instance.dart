// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vsc_mount_point_instance_vsc.dart';

class VscMountPointInstance {
  /// The ID of the ECS instance to which the HDFS file system is mounted.
  final String? instanceId;
  /// The status of the ECS instance on which the HDFS file system is mounted.
  final String? status;
  /// The VSC list of mounted HDFS file systems.
  final List<VscMountPointInstanceVsc>? vscs;

  /// Creates a new [VscMountPointInstance].
  /// [instanceId] The ID of the ECS instance to which the HDFS file system is mounted.
  /// [status] The status of the ECS instance on which the HDFS file system is mounted.
  /// [vscs] The VSC list of mounted HDFS file systems.
  VscMountPointInstance({
    this.instanceId,
    this.status,
    this.vscs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'status': ?status,
      'vscs': ?vscs == null ? null : pulumi.Input.encodeList<VscMountPointInstanceVsc, Map<String, dynamic>>(vscs!, (value) => value.toMap()),
    };
  }

  factory VscMountPointInstance.fromMap(Map<String, dynamic> map) {
    return VscMountPointInstance(
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      vscs: map['vscs'] == null ? null : pulumi.Input.decodeList<VscMountPointInstanceVsc>(map['vscs'], (value) => VscMountPointInstanceVsc.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

