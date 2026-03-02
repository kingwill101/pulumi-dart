// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_properties.dart';
import 'nfs_azure_file_properties.dart';

/// Storage properties
class ManagedEnvironmentStorageProperties {
  /// Azure file properties
  final pulumi.Input<AzureFileProperties>? azureFile;
  /// NFS Azure file properties
  final pulumi.Input<NfsAzureFileProperties>? nfsAzureFile;

  /// Creates a new [ManagedEnvironmentStorageProperties].
  /// [azureFile] Azure file properties
  /// [nfsAzureFile] NFS Azure file properties
  ManagedEnvironmentStorageProperties({
    this.azureFile,
    this.nfsAzureFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile': ?pulumi.Input.mapOptionalInputValue<AzureFileProperties, Map<String, dynamic>>(azureFile, (value) => value.toMap()),
      'nfsAzureFile': ?pulumi.Input.mapOptionalInputValue<NfsAzureFileProperties, Map<String, dynamic>>(nfsAzureFile, (value) => value.toMap()),
    };
  }

  factory ManagedEnvironmentStorageProperties.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentStorageProperties(
      azureFile: map['azureFile'] == null ? null : (AzureFileProperties.fromMap((map['azureFile'] as Map).cast<String, dynamic>())).input(),
      nfsAzureFile: map['nfsAzureFile'] == null ? null : (NfsAzureFileProperties.fromMap((map['nfsAzureFile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

