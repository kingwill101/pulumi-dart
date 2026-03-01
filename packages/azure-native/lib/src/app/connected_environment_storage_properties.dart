// ignore_for_file: unused_element, unnecessary_cast

import 'azure_file_properties.dart';
import 'smb_storage.dart';

/// Storage properties
class ConnectedEnvironmentStorageProperties {
  /// Azure file properties
  final AzureFileProperties? azureFile;
  /// SMB storage properties
  final SmbStorage? smb;

  /// Creates a new [ConnectedEnvironmentStorageProperties].
  /// [azureFile] Azure file properties
  /// [smb] SMB storage properties
  ConnectedEnvironmentStorageProperties({
    this.azureFile,
    this.smb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile': ?azureFile == null ? null : azureFile!.toMap(),
      'smb': ?smb == null ? null : smb!.toMap(),
    };
  }

  factory ConnectedEnvironmentStorageProperties.fromMap(Map<String, dynamic> map) {
    return ConnectedEnvironmentStorageProperties(
      azureFile: map['azureFile'] == null ? null : AzureFileProperties.fromMap((map['azureFile'] as Map).cast<String, dynamic>()),
      smb: map['smb'] == null ? null : SmbStorage.fromMap((map['smb'] as Map).cast<String, dynamic>()),
    );
  }
}

