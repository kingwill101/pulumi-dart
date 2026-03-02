// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_file_system_configuration_response.dart';
import 'azure_file_share_configuration_response.dart';
import 'cifsmount_configuration_response.dart';
import 'nfsmount_configuration_response.dart';

/// The file system to mount on each node.
class MountConfigurationResponse {
  /// This property is mutually exclusive with all other properties.
  final pulumi.Input<AzureBlobFileSystemConfigurationResponse>? azureBlobFileSystemConfiguration;
  /// This property is mutually exclusive with all other properties.
  final pulumi.Input<AzureFileShareConfigurationResponse>? azureFileShareConfiguration;
  /// This property is mutually exclusive with all other properties.
  final pulumi.Input<CIFSMountConfigurationResponse>? cifsMountConfiguration;
  /// This property is mutually exclusive with all other properties.
  final pulumi.Input<NFSMountConfigurationResponse>? nfsMountConfiguration;

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
      'azureBlobFileSystemConfiguration': ?pulumi.Input.mapOptionalInputValue<AzureBlobFileSystemConfigurationResponse, Map<String, dynamic>>(azureBlobFileSystemConfiguration, (value) => value.toMap()),
      'azureFileShareConfiguration': ?pulumi.Input.mapOptionalInputValue<AzureFileShareConfigurationResponse, Map<String, dynamic>>(azureFileShareConfiguration, (value) => value.toMap()),
      'cifsMountConfiguration': ?pulumi.Input.mapOptionalInputValue<CIFSMountConfigurationResponse, Map<String, dynamic>>(cifsMountConfiguration, (value) => value.toMap()),
      'nfsMountConfiguration': ?pulumi.Input.mapOptionalInputValue<NFSMountConfigurationResponse, Map<String, dynamic>>(nfsMountConfiguration, (value) => value.toMap()),
    };
  }

  factory MountConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return MountConfigurationResponse(
      azureBlobFileSystemConfiguration: map['azureBlobFileSystemConfiguration'] == null ? null : (AzureBlobFileSystemConfigurationResponse.fromMap((map['azureBlobFileSystemConfiguration']! as Map).cast<String, dynamic>())).input(),
      azureFileShareConfiguration: map['azureFileShareConfiguration'] == null ? null : (AzureFileShareConfigurationResponse.fromMap((map['azureFileShareConfiguration']! as Map).cast<String, dynamic>())).input(),
      cifsMountConfiguration: map['cifsMountConfiguration'] == null ? null : (CIFSMountConfigurationResponse.fromMap((map['cifsMountConfiguration']! as Map).cast<String, dynamic>())).input(),
      nfsMountConfiguration: map['nfsMountConfiguration'] == null ? null : (NFSMountConfigurationResponse.fromMap((map['nfsMountConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

