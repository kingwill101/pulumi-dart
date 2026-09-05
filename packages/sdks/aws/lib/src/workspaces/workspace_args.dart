// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_workspace_properties.dart';

/// {@template pulumi_workspaces_workspace_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_workspaces_workspace_workspace_args_doc}
class WorkspaceArgs {
  /// The ID of the bundle for the WorkSpace.
  final pulumi.Input<String> bundleId;
  /// The ID of the directory for the WorkSpace.
  final pulumi.Input<String> directoryId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Indicates whether the data stored on the root volume is encrypted.
  final pulumi.Input<bool?>? rootVolumeEncryptionEnabled;
  /// The tags for the WorkSpace. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace.
  final pulumi.Input<String> userName;
  /// Indicates whether the data stored on the user volume is encrypted.
  final pulumi.Input<bool?>? userVolumeEncryptionEnabled;
  /// The ARN of a symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  final pulumi.Input<String?>? volumeEncryptionKey;
  /// The WorkSpace properties.
  final pulumi.Input<WorkspaceWorkspaceProperties?>? workspaceProperties;

  /// Creates a new [WorkspaceArgs].
  /// [bundleId] The ID of the bundle for the WorkSpace.
  /// [directoryId] The ID of the directory for the WorkSpace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootVolumeEncryptionEnabled] Indicates whether the data stored on the root volume is encrypted.
  /// [tags] The tags for the WorkSpace. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userName] The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace.
  /// [userVolumeEncryptionEnabled] Indicates whether the data stored on the user volume is encrypted.
  /// [volumeEncryptionKey] The ARN of a symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  /// [workspaceProperties] The WorkSpace properties.
  const WorkspaceArgs({
    required this.bundleId,
    required this.directoryId,
    this.region,
    this.rootVolumeEncryptionEnabled,
    this.tags,
    required this.userName,
    this.userVolumeEncryptionEnabled,
    this.volumeEncryptionKey,
    this.workspaceProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': bundleId,
      'directoryId': directoryId,
      'region': ?region,
      'rootVolumeEncryptionEnabled': ?rootVolumeEncryptionEnabled,
      'tags': ?tags,
      'userName': userName,
      'userVolumeEncryptionEnabled': ?userVolumeEncryptionEnabled,
      'volumeEncryptionKey': ?volumeEncryptionKey,
      'workspaceProperties': ?pulumi.Input.mapOptionalInputValue<WorkspaceWorkspaceProperties, Map<String, dynamic>>(workspaceProperties, (value) => value.toMap()),
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      bundleId: pulumi.Input.fromValue(map['bundleId'] as String),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootVolumeEncryptionEnabled: (() { final guardedValue = map['rootVolumeEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userName: pulumi.Input.fromValue(map['userName'] as String),
      userVolumeEncryptionEnabled: (() { final guardedValue = map['userVolumeEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      volumeEncryptionKey: (() { final guardedValue = map['volumeEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceProperties: (() { final guardedValue = map['workspaceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceWorkspaceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
