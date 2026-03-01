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
  final pulumi.Input<String>? region;
  /// Indicates whether the data stored on the root volume is encrypted.
  final pulumi.Input<bool>? rootVolumeEncryptionEnabled;
  /// The tags for the WorkSpace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace.
  final pulumi.Input<String> userName;
  /// Indicates whether the data stored on the user volume is encrypted.
  final pulumi.Input<bool>? userVolumeEncryptionEnabled;
  /// The ARN of a symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  final pulumi.Input<String>? volumeEncryptionKey;
  /// The WorkSpace properties.
  final pulumi.Input<WorkspaceWorkspaceProperties>? workspaceProperties;

  /// Creates a new [WorkspaceArgs].
  /// [bundleId] The ID of the bundle for the WorkSpace.
  /// [directoryId] The ID of the directory for the WorkSpace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootVolumeEncryptionEnabled] Indicates whether the data stored on the root volume is encrypted.
  /// [tags] The tags for the WorkSpace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userName] The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace.
  /// [userVolumeEncryptionEnabled] Indicates whether the data stored on the user volume is encrypted.
  /// [volumeEncryptionKey] The ARN of a symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  /// [workspaceProperties] The WorkSpace properties.
  WorkspaceArgs({
    required pulumi.Output<String> bundleId,
    required pulumi.Output<String> directoryId,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? rootVolumeEncryptionEnabled,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> userName,
    pulumi.Output<bool>? userVolumeEncryptionEnabled,
    pulumi.Output<String>? volumeEncryptionKey,
    pulumi.Output<WorkspaceWorkspaceProperties>? workspaceProperties,
  }) :
      bundleId = pulumi.Input.asInput<String>(bundleId),
      directoryId = pulumi.Input.asInput<String>(directoryId),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootVolumeEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(rootVolumeEncryptionEnabled),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userName = pulumi.Input.asInput<String>(userName),
      userVolumeEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(userVolumeEncryptionEnabled),
      volumeEncryptionKey = pulumi.Input.asOptionalInput<String>(volumeEncryptionKey),
      workspaceProperties = pulumi.Input.asOptionalInput<WorkspaceWorkspaceProperties>(workspaceProperties);

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
      bundleId: pulumi.Output.create<String>(map['bundleId'] as String),
      directoryId: pulumi.Output.create<String>(map['directoryId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootVolumeEncryptionEnabled: map['rootVolumeEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['rootVolumeEncryptionEnabled'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userName: pulumi.Output.create<String>(map['userName'] as String),
      userVolumeEncryptionEnabled: map['userVolumeEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['userVolumeEncryptionEnabled'] as bool),
      volumeEncryptionKey: map['volumeEncryptionKey'] == null ? null : pulumi.Output.create<String>(map['volumeEncryptionKey'] as String),
      workspaceProperties: map['workspaceProperties'] == null ? null : pulumi.Output.create<WorkspaceWorkspaceProperties>(WorkspaceWorkspaceProperties.fromMap((map['workspaceProperties'] as Map).cast<String, dynamic>())),
    );
  }
}

