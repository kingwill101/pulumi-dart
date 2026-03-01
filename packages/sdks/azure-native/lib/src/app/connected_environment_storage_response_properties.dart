// ignore_for_file: unused_element, unnecessary_cast

import 'azure_file_properties_response.dart';
import 'smb_storage_response.dart';

/// Storage properties
class ConnectedEnvironmentStorageResponseProperties {
  /// Azure file properties
  final AzureFilePropertiesResponse? azureFile;
  /// Any errors that occurred during deployment or deployment validation
  final String deploymentErrors;
  /// Provisioning state of the storage.
  final String provisioningState;
  /// SMB storage properties
  final SmbStorageResponse? smb;

  /// Creates a new [ConnectedEnvironmentStorageResponseProperties].
  /// [azureFile] Azure file properties
  /// [deploymentErrors] Any errors that occurred during deployment or deployment validation
  /// [provisioningState] Provisioning state of the storage.
  /// [smb] SMB storage properties
  ConnectedEnvironmentStorageResponseProperties({
    this.azureFile,
    required this.deploymentErrors,
    required this.provisioningState,
    this.smb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile': ?azureFile == null ? null : azureFile!.toMap(),
      'deploymentErrors': deploymentErrors,
      'provisioningState': provisioningState,
      'smb': ?smb == null ? null : smb!.toMap(),
    };
  }

  factory ConnectedEnvironmentStorageResponseProperties.fromMap(Map<String, dynamic> map) {
    return ConnectedEnvironmentStorageResponseProperties(
      azureFile: map['azureFile'] == null ? null : AzureFilePropertiesResponse.fromMap((map['azureFile'] as Map).cast<String, dynamic>()),
      deploymentErrors: map['deploymentErrors'] as String,
      provisioningState: map['provisioningState'] as String,
      smb: map['smb'] == null ? null : SmbStorageResponse.fromMap((map['smb'] as Map).cast<String, dynamic>()),
    );
  }
}

