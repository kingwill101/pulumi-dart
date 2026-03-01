// ignore_for_file: unused_element, unnecessary_cast

import 'azure_blob_file_system_configuration.dart';
import 'azure_file_share_configuration.dart';
import 'cifsmount_configuration.dart';
import 'nfsmount_configuration.dart';

/// The file system to mount on each node.
class MountConfiguration {
  /// This property is mutually exclusive with all other properties.
  final AzureBlobFileSystemConfiguration? azureBlobFileSystemConfiguration;
  /// This property is mutually exclusive with all other properties.
  final AzureFileShareConfiguration? azureFileShareConfiguration;
  /// This property is mutually exclusive with all other properties.
  final CIFSMountConfiguration? cifsMountConfiguration;
  /// This property is mutually exclusive with all other properties.
  final NFSMountConfiguration? nfsMountConfiguration;

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
      'azureBlobFileSystemConfiguration': ?azureBlobFileSystemConfiguration == null ? null : azureBlobFileSystemConfiguration!.toMap(),
      'azureFileShareConfiguration': ?azureFileShareConfiguration == null ? null : azureFileShareConfiguration!.toMap(),
      'cifsMountConfiguration': ?cifsMountConfiguration == null ? null : cifsMountConfiguration!.toMap(),
      'nfsMountConfiguration': ?nfsMountConfiguration == null ? null : nfsMountConfiguration!.toMap(),
    };
  }

  factory MountConfiguration.fromMap(Map<String, dynamic> map) {
    return MountConfiguration(
      azureBlobFileSystemConfiguration: map['azureBlobFileSystemConfiguration'] == null ? null : AzureBlobFileSystemConfiguration.fromMap((map['azureBlobFileSystemConfiguration'] as Map).cast<String, dynamic>()),
      azureFileShareConfiguration: map['azureFileShareConfiguration'] == null ? null : AzureFileShareConfiguration.fromMap((map['azureFileShareConfiguration'] as Map).cast<String, dynamic>()),
      cifsMountConfiguration: map['cifsMountConfiguration'] == null ? null : CIFSMountConfiguration.fromMap((map['cifsMountConfiguration'] as Map).cast<String, dynamic>()),
      nfsMountConfiguration: map['nfsMountConfiguration'] == null ? null : NFSMountConfiguration.fromMap((map['nfsMountConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

