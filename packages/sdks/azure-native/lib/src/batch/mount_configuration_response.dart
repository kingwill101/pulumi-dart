// ignore_for_file: unused_element, unnecessary_cast

import 'azure_blob_file_system_configuration_response.dart';
import 'azure_file_share_configuration_response.dart';
import 'cifsmount_configuration_response.dart';
import 'nfsmount_configuration_response.dart';

/// The file system to mount on each node.
class MountConfigurationResponse {
  /// This property is mutually exclusive with all other properties.
  final AzureBlobFileSystemConfigurationResponse? azureBlobFileSystemConfiguration;
  /// This property is mutually exclusive with all other properties.
  final AzureFileShareConfigurationResponse? azureFileShareConfiguration;
  /// This property is mutually exclusive with all other properties.
  final CIFSMountConfigurationResponse? cifsMountConfiguration;
  /// This property is mutually exclusive with all other properties.
  final NFSMountConfigurationResponse? nfsMountConfiguration;

  /// Creates a new [MountConfigurationResponse].
  /// [azureBlobFileSystemConfiguration] This property is mutually exclusive with all other properties.
  /// [azureFileShareConfiguration] This property is mutually exclusive with all other properties.
  /// [cifsMountConfiguration] This property is mutually exclusive with all other properties.
  /// [nfsMountConfiguration] This property is mutually exclusive with all other properties.
  MountConfigurationResponse({
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

  factory MountConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return MountConfigurationResponse(
      azureBlobFileSystemConfiguration: map['azureBlobFileSystemConfiguration'] == null ? null : AzureBlobFileSystemConfigurationResponse.fromMap((map['azureBlobFileSystemConfiguration'] as Map).cast<String, dynamic>()),
      azureFileShareConfiguration: map['azureFileShareConfiguration'] == null ? null : AzureFileShareConfigurationResponse.fromMap((map['azureFileShareConfiguration'] as Map).cast<String, dynamic>()),
      cifsMountConfiguration: map['cifsMountConfiguration'] == null ? null : CIFSMountConfigurationResponse.fromMap((map['cifsMountConfiguration'] as Map).cast<String, dynamic>()),
      nfsMountConfiguration: map['nfsMountConfiguration'] == null ? null : NFSMountConfigurationResponse.fromMap((map['nfsMountConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

