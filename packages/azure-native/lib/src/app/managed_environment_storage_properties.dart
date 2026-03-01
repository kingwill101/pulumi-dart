// ignore_for_file: unused_element, unnecessary_cast

import 'azure_file_properties.dart';
import 'nfs_azure_file_properties.dart';

/// Storage properties
class ManagedEnvironmentStorageProperties {
  /// Azure file properties
  final AzureFileProperties? azureFile;
  /// NFS Azure file properties
  final NfsAzureFileProperties? nfsAzureFile;

  /// Creates a new [ManagedEnvironmentStorageProperties].
  /// [azureFile] Azure file properties
  /// [nfsAzureFile] NFS Azure file properties
  ManagedEnvironmentStorageProperties({
    this.azureFile,
    this.nfsAzureFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile': ?azureFile == null ? null : azureFile!.toMap(),
      'nfsAzureFile': ?nfsAzureFile == null ? null : nfsAzureFile!.toMap(),
    };
  }

  factory ManagedEnvironmentStorageProperties.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentStorageProperties(
      azureFile: map['azureFile'] == null ? null : AzureFileProperties.fromMap((map['azureFile'] as Map).cast<String, dynamic>()),
      nfsAzureFile: map['nfsAzureFile'] == null ? null : NfsAzureFileProperties.fromMap((map['nfsAzureFile'] as Map).cast<String, dynamic>()),
    );
  }
}

