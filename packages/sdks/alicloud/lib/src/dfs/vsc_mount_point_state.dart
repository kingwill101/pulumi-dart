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
  VscMountPointState({
    pulumi.Output<String>? aliasPrefix,
    pulumi.Output<String>? description,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<List<VscMountPointInstance>>? instances,
    pulumi.Output<String>? mountPointId,
  }) :
      aliasPrefix = pulumi.Input.asOptionalInput<String>(aliasPrefix),
      description = pulumi.Input.asOptionalInput<String>(description),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      instances = pulumi.Input.asOptionalInput<List<VscMountPointInstance>>(instances),
      mountPointId = pulumi.Input.asOptionalInput<String>(mountPointId);

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
      aliasPrefix: map['aliasPrefix'] == null ? null : pulumi.Output.create<String>(map['aliasPrefix'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      instances: map['instances'] == null ? null : pulumi.Output.create<List<VscMountPointInstance>>(pulumi.Input.decodeList<VscMountPointInstance>(map['instances'], (value) => VscMountPointInstance.fromMap((value as Map).cast<String, dynamic>()))),
      mountPointId: map['mountPointId'] == null ? null : pulumi.Output.create<String>(map['mountPointId'] as String),
    );
  }
}

