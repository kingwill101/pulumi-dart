// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_file_system_configuration.dart';
import 'azure_file_share_configuration.dart';
import 'cifsmount_configuration.dart';
import 'nfsmount_configuration.dart';

/// The file system to mount on each node.
class MountConfiguration {
  /// This property is mutually exclusive with all other properties.
  final pulumi.Input<AzureBlobFileSystemConfiguration>?
  azureBlobFileSystemConfiguration;

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
      'azureBlobFileSystemConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AzureBlobFileSystemConfiguration,
            Map<String, dynamic>
          >(azureBlobFileSystemConfiguration, (value) => value.toMap()),
      'azureFileShareConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AzureFileShareConfiguration,
            Map<String, dynamic>
          >(azureFileShareConfiguration, (value) => value.toMap()),
      'cifsMountConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            CIFSMountConfiguration,
            Map<String, dynamic>
          >(cifsMountConfiguration, (value) => value.toMap()),
      'nfsMountConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            NFSMountConfiguration,
            Map<String, dynamic>
          >(nfsMountConfiguration, (value) => value.toMap()),
    };
  }

  factory MountConfiguration.fromMap(Map<String, dynamic> map) {
    return MountConfiguration(
      azureBlobFileSystemConfiguration: (() {
        final guardedValue = map['azureBlobFileSystemConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureBlobFileSystemConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      azureFileShareConfiguration: (() {
        final guardedValue = map['azureFileShareConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureFileShareConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cifsMountConfiguration: (() {
        final guardedValue = map['cifsMountConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CIFSMountConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nfsMountConfiguration: (() {
        final guardedValue = map['nfsMountConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NFSMountConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
