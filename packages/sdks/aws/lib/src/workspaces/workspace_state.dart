// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_workspace_properties.dart';

/// Input properties used for looking up and filtering Workspace resources.
class WorkspaceState {
  /// The ID of the bundle for the WorkSpace.
  final pulumi.Input<String?>? bundleId;
  /// The name of the WorkSpace, as seen by the operating system.
  final pulumi.Input<String?>? computerName;
  /// The ID of the directory for the WorkSpace.
  final pulumi.Input<String?>? directoryId;
  /// The IP address of the WorkSpace.
  final pulumi.Input<String?>? ipAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Indicates whether the data stored on the root volume is encrypted.
  final pulumi.Input<bool?>? rootVolumeEncryptionEnabled;
  /// The operational state of the WorkSpace.
  final pulumi.Input<String?>? state;
  /// The tags for the WorkSpace. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace.
  final pulumi.Input<String?>? userName;
  /// Indicates whether the data stored on the user volume is encrypted.
  final pulumi.Input<bool?>? userVolumeEncryptionEnabled;
  /// The ARN of a symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  final pulumi.Input<String?>? volumeEncryptionKey;
  /// The WorkSpace properties.
  final pulumi.Input<WorkspaceWorkspaceProperties?>? workspaceProperties;

  /// Creates a new [WorkspaceState].
  /// [bundleId] The ID of the bundle for the WorkSpace.
  /// [computerName] The name of the WorkSpace, as seen by the operating system.
  /// [directoryId] The ID of the directory for the WorkSpace.
  /// [ipAddress] The IP address of the WorkSpace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootVolumeEncryptionEnabled] Indicates whether the data stored on the root volume is encrypted.
  /// [state] The operational state of the WorkSpace.
  /// [tags] The tags for the WorkSpace. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [userName] The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace.
  /// [userVolumeEncryptionEnabled] Indicates whether the data stored on the user volume is encrypted.
  /// [volumeEncryptionKey] The ARN of a symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  /// [workspaceProperties] The WorkSpace properties.
  const WorkspaceState({
    this.bundleId,
    this.computerName,
    this.directoryId,
    this.ipAddress,
    this.region,
    this.rootVolumeEncryptionEnabled,
    this.state,
    this.tags,
    this.tagsAll,
    this.userName,
    this.userVolumeEncryptionEnabled,
    this.volumeEncryptionKey,
    this.workspaceProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': ?bundleId,
      'computerName': ?computerName,
      'directoryId': ?directoryId,
      'ipAddress': ?ipAddress,
      'region': ?region,
      'rootVolumeEncryptionEnabled': ?rootVolumeEncryptionEnabled,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userName': ?userName,
      'userVolumeEncryptionEnabled': ?userVolumeEncryptionEnabled,
      'volumeEncryptionKey': ?volumeEncryptionKey,
      'workspaceProperties': ?pulumi.Input.mapOptionalInputValue<WorkspaceWorkspaceProperties, Map<String, dynamic>>(workspaceProperties, (value) => value.toMap()),
    };
  }

  factory WorkspaceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceState(
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootVolumeEncryptionEnabled: (() { final guardedValue = map['rootVolumeEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userVolumeEncryptionEnabled: (() { final guardedValue = map['userVolumeEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      volumeEncryptionKey: (() { final guardedValue = map['volumeEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceProperties: (() { final guardedValue = map['workspaceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceWorkspaceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
