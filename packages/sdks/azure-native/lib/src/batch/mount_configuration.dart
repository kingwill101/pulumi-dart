// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_file_system_configuration.dart';
import 'azure_file_share_configuration.dart';
import 'cifsmount_configuration.dart';
import 'nfsmount_configuration.dart';

/// The file system to mount on each node.
class MountConfiguration {
  /// This property is mutually exclusive with all other properties.
  final pulumi.Input<AzureBlobFileSystemConfiguration>? azureBlobFileSystemConfiguration;
  /// This property is mutually exclusive with all other properties.
  final pulumi.Input<AzureFileShareConfiguration>? azureFileShareConfiguration;
  /// This property is mutually exclusive with all other properties.
  final pulumi.Input<CIFSMountConfiguration>? cifsMountConfiguration;
  /// This property is mutually exclusive with all other properties.
  final pulumi.Input<NFSMountConfiguration>? nfsMountConfiguration;

  /// Creates a new [MountConfiguration].
  /// [azureBlobFileSystemConfiguration] This property is mutually exclusive with all other properties.
  /// [azureFileShareConfiguration] This property is mutually exclusive with all other properties.
  /// [cifsMountConfiguration] This property is mutually exclusive with all other properties.
  /// [nfsMountConfiguration] This property is mutually exclusive with all other properties.
  MountConfiguration({
    this.azureBlobFileSystemConfiguration,
    this.azureFileShareConfiguration,
    this.cifsMountConfiguration,
    this.nfsMountConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobFileSystemConfiguration': ?pulumi.Input.mapOptionalInputValue<AzureBlobFileSystemConfiguration, Map<String, dynamic>>(azureBlobFileSystemConfiguration, (value) => value.toMap()),
      'azureFileShareConfiguration': ?pulumi.Input.mapOptionalInputValue<AzureFileShareConfiguration, Map<String, dynamic>>(azureFileShareConfiguration, (value) => value.toMap()),
      'cifsMountConfiguration': ?pulumi.Input.mapOptionalInputValue<CIFSMountConfiguration, Map<String, dynamic>>(cifsMountConfiguration, (value) => value.toMap()),
      'nfsMountConfiguration': ?pulumi.Input.mapOptionalInputValue<NFSMountConfiguration, Map<String, dynamic>>(nfsMountConfiguration, (value) => value.toMap()),
    };
  }

  factory MountConfiguration.fromMap(Map<String, dynamic> map) {
    return MountConfiguration(
      azureBlobFileSystemConfiguration: map['azureBlobFileSystemConfiguration'] == null ? null : (AzureBlobFileSystemConfiguration.fromMap((map['azureBlobFileSystemConfiguration'] as Map).cast<String, dynamic>())).input(),
      azureFileShareConfiguration: map['azureFileShareConfiguration'] == null ? null : (AzureFileShareConfiguration.fromMap((map['azureFileShareConfiguration'] as Map).cast<String, dynamic>())).input(),
      cifsMountConfiguration: map['cifsMountConfiguration'] == null ? null : (CIFSMountConfiguration.fromMap((map['cifsMountConfiguration'] as Map).cast<String, dynamic>())).input(),
      nfsMountConfiguration: map['nfsMountConfiguration'] == null ? null : (NFSMountConfiguration.fromMap((map['nfsMountConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

