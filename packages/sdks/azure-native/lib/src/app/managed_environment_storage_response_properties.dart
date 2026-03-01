// ignore_for_file: unused_element, unnecessary_cast

import 'azure_file_properties_response.dart';
import 'nfs_azure_file_properties_response.dart';

/// Storage properties
class ManagedEnvironmentStorageResponseProperties {
  /// Azure file properties
  final AzureFilePropertiesResponse? azureFile;
  /// NFS Azure file properties
  final NfsAzureFilePropertiesResponse? nfsAzureFile;

  /// Creates a new [ManagedEnvironmentStorageResponseProperties].
  /// [azureFile] Azure file properties
  /// [nfsAzureFile] NFS Azure file properties
  ManagedEnvironmentStorageResponseProperties({
    this.azureFile,
    this.nfsAzureFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile': ?azureFile == null ? null : azureFile!.toMap(),
      'nfsAzureFile': ?nfsAzureFile == null ? null : nfsAzureFile!.toMap(),
    };
  }

  factory ManagedEnvironmentStorageResponseProperties.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentStorageResponseProperties(
      azureFile: map['azureFile'] == null ? null : AzureFilePropertiesResponse.fromMap((map['azureFile'] as Map).cast<String, dynamic>()),
      nfsAzureFile: map['nfsAzureFile'] == null ? null : NfsAzureFilePropertiesResponse.fromMap((map['nfsAzureFile'] as Map).cast<String, dynamic>()),
    );
  }
}

