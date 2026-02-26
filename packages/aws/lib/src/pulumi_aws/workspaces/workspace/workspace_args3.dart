// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workspace_workspace_properties/workspace_workspace_properties.dart';

/// The set of arguments for Workspace.
class WorkspaceArgs3 {
  /// The ID of the bundle for the WorkSpace.
  final Input<String> bundleId;

  /// The ID of the directory for the WorkSpace.
  final Input<String> directoryId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Indicates whether the data stored on the root volume is encrypted.
  final Input<bool>? rootVolumeEncryptionEnabled;

  /// The tags for the WorkSpace. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The user name of the user for the WorkSpace. This user name must exist in the directory for the WorkSpace.
  final Input<String> userName;

  /// Indicates whether the data stored on the user volume is encrypted.
  final Input<bool>? userVolumeEncryptionEnabled;

  /// The ARN of a symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  final Input<String>? volumeEncryptionKey;

  /// The WorkSpace properties.
  final Input<WorkspaceWorkspaceProperties>? workspaceProperties;

  WorkspaceArgs3({
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
      map['workspaceProperties'] = Input.mapOptionalInputValue<
              WorkspaceWorkspaceProperties, Map<String, dynamic>>(
          workspacePropertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WorkspaceArgs3.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs3(
      bundleId: Input.asInput<String>(map['bundleId']),
      directoryId: Input.asInput<String>(map['directoryId']),
      region: Input.asOptionalInput<String>(map['region']),
      rootVolumeEncryptionEnabled:
          Input.asOptionalInput<bool>(map['rootVolumeEncryptionEnabled']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userName: Input.asInput<String>(map['userName']),
      userVolumeEncryptionEnabled:
          Input.asOptionalInput<bool>(map['userVolumeEncryptionEnabled']),
      volumeEncryptionKey:
          Input.asOptionalInput<String>(map['volumeEncryptionKey']),
      workspaceProperties: Input.asOptionalInput<WorkspaceWorkspaceProperties>(
          map['workspaceProperties']),
    );
  }
}
