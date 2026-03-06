// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vsc_mount_point_instance.dart';

/// Input properties used for looking up and filtering VscMountPoint resources.
class VscMountPointState {
  /// Mount point alias prefix, which is used as the prefix for generating VSC mount point aliases.
  final pulumi.Input<String>? aliasPrefix;
  /// The description of the Mount point.  The length is 0 to 100 characters.
  final pulumi.Input<String>? description;
  /// The ID of the HDFS file system resource associated with the VSC mount point.
  final pulumi.Input<String>? fileSystemId;
  /// The collection of ECS instances on which the HDFS file system is mounted. **The current property is not available**.
  final pulumi.Input<List<VscMountPointInstance>>? instances;
  /// VSC mount point ID, which is the unique identifier of the vsc mount point and is used to access the associated HDFS file system.
  final pulumi.Input<String>? mountPointId;

  /// Creates a new [VscMountPointState].
  /// [aliasPrefix] Mount point alias prefix, which is used as the prefix for generating VSC mount point aliases.
  /// [description] The description of the Mount point.  The length is 0 to 100 characters.
  /// [fileSystemId] The ID of the HDFS file system resource associated with the VSC mount point.
  /// [instances] The collection of ECS instances on which the HDFS file system is mounted. **The current property is not available**.
  /// [mountPointId] VSC mount point ID, which is the unique identifier of the vsc mount point and is used to access the associated HDFS file system.
  const VscMountPointState({
    this.aliasPrefix,
    this.description,
    this.fileSystemId,
    this.instances,
    this.mountPointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasPrefix': ?aliasPrefix,
      'description': ?description,
      'fileSystemId': ?fileSystemId,
      'instances': ?pulumi.Input.mapOptionalInputValue<List<VscMountPointInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<VscMountPointInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mountPointId': ?mountPointId,
    };
  }

  factory VscMountPointState.fromMap(Map<String, dynamic> map) {
    return VscMountPointState(
      aliasPrefix: (() { final guardedValue = map['aliasPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VscMountPointInstance>(guardedValue, (value) => VscMountPointInstance.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mountPointId: (() { final guardedValue = map['mountPointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

