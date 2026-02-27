// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_workspace_workspace_property/get_workspace_workspace_property.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceWorkspacesResult {
  /// ID of the bundle for the WorkSpace.
  final String bundleId;

  /// Name of the WorkSpace, as seen by the operating system.
  final String computerName;
  final String directoryId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// IP address of the WorkSpace.
  final String ipAddress;
  final String region;

  /// Indicates whether the data stored on the root volume is encrypted.
  final bool rootVolumeEncryptionEnabled;

  /// Operational state of the WorkSpace.
  final String state;

  /// Tags for the WorkSpace.
  final Map<String, String> tags;
  final String userName;

  /// Indicates whether the data stored on the user volume
  /// is encrypted.
  final bool userVolumeEncryptionEnabled;

  /// Symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  final String volumeEncryptionKey;
  final String workspaceId;

  /// WorkSpace properties.
  final List<GetWorkspaceWorkspaceProperty> workspaceProperties;

  GetWorkspaceWorkspacesResult({
    required this.bundleId,
    required this.computerName,
    required this.directoryId,
    required this.id,
    required this.ipAddress,
    required this.region,
    required this.rootVolumeEncryptionEnabled,
    required this.state,
    required this.tags,
    required this.userName,
    required this.userVolumeEncryptionEnabled,
    required this.volumeEncryptionKey,
    required this.workspaceId,
    required this.workspaceProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundleId'] = bundleId;
    map['computerName'] = computerName;
    map['directoryId'] = directoryId;
    map['id'] = id;
    map['ipAddress'] = ipAddress;
    map['region'] = region;
    map['rootVolumeEncryptionEnabled'] = rootVolumeEncryptionEnabled;
    map['state'] = state;
    map['tags'] = tags;
    map['userName'] = userName;
    map['userVolumeEncryptionEnabled'] = userVolumeEncryptionEnabled;
    map['volumeEncryptionKey'] = volumeEncryptionKey;
    map['workspaceId'] = workspaceId;
    map['workspaceProperties'] = pulumi.Input.encodeList<
        GetWorkspaceWorkspaceProperty,
        Map<String, dynamic>>(workspaceProperties, (value) => value.toMap());
    return map;
  }

  factory GetWorkspaceWorkspacesResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceWorkspacesResult(
      bundleId: map['bundleId'] as String,
      computerName: map['computerName'] as String,
      directoryId: map['directoryId'] as String,
      id: map['id'] as String,
      ipAddress: map['ipAddress'] as String,
      region: map['region'] as String,
      rootVolumeEncryptionEnabled: map['rootVolumeEncryptionEnabled'] as bool,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userName: map['userName'] as String,
      userVolumeEncryptionEnabled: map['userVolumeEncryptionEnabled'] as bool,
      volumeEncryptionKey: map['volumeEncryptionKey'] as String,
      workspaceId: map['workspaceId'] as String,
      workspaceProperties:
          pulumi.Input.decodeList<GetWorkspaceWorkspaceProperty>(
              map['workspaceProperties'],
              (value) => GetWorkspaceWorkspaceProperty.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
