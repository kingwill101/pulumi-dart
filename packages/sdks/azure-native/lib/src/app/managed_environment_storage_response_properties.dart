// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_properties_response.dart';
import 'nfs_azure_file_properties_response.dart';

/// Storage properties
class ManagedEnvironmentStorageResponseProperties {
  /// Azure file properties
  final pulumi.Input<AzureFilePropertiesResponse>? azureFile;
  /// NFS Azure file properties
  final pulumi.Input<NfsAzureFilePropertiesResponse>? nfsAzureFile;

  /// Creates a new [ManagedEnvironmentStorageResponseProperties].
  /// [azureFile] Azure file properties
  /// [nfsAzureFile] NFS Azure file properties
  ManagedEnvironmentStorageResponseProperties({
    this.azureFile,
    this.nfsAzureFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile': ?pulumi.Input.mapOptionalInputValue<AzureFilePropertiesResponse, Map<String, dynamic>>(azureFile, (value) => value.toMap()),
      'nfsAzureFile': ?pulumi.Input.mapOptionalInputValue<NfsAzureFilePropertiesResponse, Map<String, dynamic>>(nfsAzureFile, (value) => value.toMap()),
    };
  }

  factory ManagedEnvironmentStorageResponseProperties.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentStorageResponseProperties(
      azureFile: map['azureFile'] == null ? null : (AzureFilePropertiesResponse.fromMap((map['azureFile']! as Map).cast<String, dynamic>())).input(),
      nfsAzureFile: map['nfsAzureFile'] == null ? null : (NfsAzureFilePropertiesResponse.fromMap((map['nfsAzureFile']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

