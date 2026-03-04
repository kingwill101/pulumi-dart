// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_file_system_configuration_response.dart';
import 'azure_file_share_configuration_response.dart';
import 'cifsmount_configuration_response.dart';
import 'nfsmount_configuration_response.dart';

/// The file system to mount on each node.
class MountConfigurationResponse {
  /// This property is mutually exclusive with all other properties.
  final pulumi.Input<AzureBlobFileSystemConfigurationResponse>?
  azureBlobFileSystemConfiguration;

  /// This property is mutually exclusive with all other properties.
  final pulumi.Input<AzureFileShareConfigurationResponse>?
  azureFileShareConfiguration;

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
      'azureBlobFileSystemConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AzureBlobFileSystemConfigurationResponse,
            Map<String, dynamic>
          >(azureBlobFileSystemConfiguration, (value) => value.toMap()),
      'azureFileShareConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AzureFileShareConfigurationResponse,
            Map<String, dynamic>
          >(azureFileShareConfiguration, (value) => value.toMap()),
      'cifsMountConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            CIFSMountConfigurationResponse,
            Map<String, dynamic>
          >(cifsMountConfiguration, (value) => value.toMap()),
      'nfsMountConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            NFSMountConfigurationResponse,
            Map<String, dynamic>
          >(nfsMountConfiguration, (value) => value.toMap()),
    };
  }

  factory MountConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return MountConfigurationResponse(
      azureBlobFileSystemConfiguration: (() {
        final guardedValue = map['azureBlobFileSystemConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureBlobFileSystemConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      azureFileShareConfiguration: (() {
        final guardedValue = map['azureFileShareConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureFileShareConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cifsMountConfiguration: (() {
        final guardedValue = map['cifsMountConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CIFSMountConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nfsMountConfiguration: (() {
        final guardedValue = map['nfsMountConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NFSMountConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
