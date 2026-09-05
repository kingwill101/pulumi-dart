// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_workspace_property.dart';

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// ID of the bundle for the WorkSpace.
  final String? bundleId;
  /// Name of the WorkSpace, as seen by the operating system.
  final String? computerName;
  final String? directoryId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// IP address of the WorkSpace.
  final String? ipAddress;
  final String? region;
  /// Indicates whether the data stored on the root volume is encrypted.
  final bool? rootVolumeEncryptionEnabled;
  /// Operational state of the WorkSpace.
  final String? state;
  /// Tags for the WorkSpace.
  final Map<String, String>? tags;
  final String? userName;
  /// Indicates whether the data stored on the user volume
  /// is encrypted.
  final bool? userVolumeEncryptionEnabled;
  /// Symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  final String? volumeEncryptionKey;
  final String? workspaceId;
  /// WorkSpace properties.
  final List<GetWorkspaceWorkspaceProperty>? workspaceProperties;

  /// Creates a new [GetWorkspaceResult].
  /// [bundleId] ID of the bundle for the WorkSpace.
  /// [computerName] Name of the WorkSpace, as seen by the operating system.
  /// [directoryId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddress] IP address of the WorkSpace.
  /// [region] Optional.
  /// [rootVolumeEncryptionEnabled] Indicates whether the data stored on the root volume is encrypted.
  /// [state] Operational state of the WorkSpace.
  /// [tags] Tags for the WorkSpace.
  /// [userName] Optional.
  /// [userVolumeEncryptionEnabled] Indicates whether the data stored on the user volume
  /// [volumeEncryptionKey] Symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.
  /// [workspaceId] Optional.
  /// [workspaceProperties] WorkSpace properties.
  const GetWorkspaceResult({
    this.bundleId,
    this.computerName,
    this.directoryId,
    this.id,
    this.ipAddress,
    this.region,
    this.rootVolumeEncryptionEnabled,
    this.state,
    this.tags,
    this.userName,
    this.userVolumeEncryptionEnabled,
    this.volumeEncryptionKey,
    this.workspaceId,
    this.workspaceProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': ?bundleId,
      'computerName': ?computerName,
      'directoryId': ?directoryId,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'region': ?region,
      'rootVolumeEncryptionEnabled': ?rootVolumeEncryptionEnabled,
      'state': ?state,
      'tags': ?tags,
      'userName': ?userName,
      'userVolumeEncryptionEnabled': ?userVolumeEncryptionEnabled,
      'volumeEncryptionKey': ?volumeEncryptionKey,
      'workspaceId': ?workspaceId,
      'workspaceProperties': ?(() { final guardedValue = workspaceProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkspaceWorkspaceProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      directoryId: (() { final guardedValue = map['directoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootVolumeEncryptionEnabled: (() { final guardedValue = map['rootVolumeEncryptionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userVolumeEncryptionEnabled: (() { final guardedValue = map['userVolumeEncryptionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      volumeEncryptionKey: (() { final guardedValue = map['volumeEncryptionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceProperties: (() { final guardedValue = map['workspaceProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkspaceWorkspaceProperty>(guardedValue, (value) => GetWorkspaceWorkspaceProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
