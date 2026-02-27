// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workspace_workspace_properties/workspace_workspace_properties.dart';

/// The set of arguments for Workspace.
class WorkspaceWorkspacesArgs {
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

  WorkspaceWorkspacesArgs({
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
    final map = <String, dynamic>{};
    map['bundleId'] = bundleId;
    map['directoryId'] = directoryId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rootVolumeEncryptionEnabledValue = rootVolumeEncryptionEnabled;
    if (rootVolumeEncryptionEnabledValue != null) {
      map['rootVolumeEncryptionEnabled'] = rootVolumeEncryptionEnabledValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['userName'] = userName;
    final userVolumeEncryptionEnabledValue = userVolumeEncryptionEnabled;
    if (userVolumeEncryptionEnabledValue != null) {
      map['userVolumeEncryptionEnabled'] = userVolumeEncryptionEnabledValue;
    }
    final volumeEncryptionKeyValue = volumeEncryptionKey;
    if (volumeEncryptionKeyValue != null) {
      map['volumeEncryptionKey'] = volumeEncryptionKeyValue;
    }
    final workspacePropertiesValue = workspaceProperties;
    if (workspacePropertiesValue != null) {
      map['workspaceProperties'] = pulumi.Input.mapOptionalInputValue<
              WorkspaceWorkspaceProperties, Map<String, dynamic>>(
          workspacePropertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkspaceWorkspacesArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceWorkspacesArgs(
      bundleId: pulumi.Input.asInput<String>(map['bundleId']),
      directoryId: pulumi.Input.asInput<String>(map['directoryId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rootVolumeEncryptionEnabled: pulumi.Input.asOptionalInput<bool>(
          map['rootVolumeEncryptionEnabled']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      userName: pulumi.Input.asInput<String>(map['userName']),
      userVolumeEncryptionEnabled: pulumi.Input.asOptionalInput<bool>(
          map['userVolumeEncryptionEnabled']),
      volumeEncryptionKey:
          pulumi.Input.asOptionalInput<String>(map['volumeEncryptionKey']),
      workspaceProperties:
          pulumi.Input.asOptionalInput<WorkspaceWorkspaceProperties>(
              map['workspaceProperties']),
    );
  }
}
