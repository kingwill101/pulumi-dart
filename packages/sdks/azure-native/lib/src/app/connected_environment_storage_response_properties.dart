// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_properties_response.dart';
import 'smb_storage_response.dart';

/// Storage properties
class ConnectedEnvironmentStorageResponseProperties {
  /// Azure file properties
  final pulumi.Input<AzureFilePropertiesResponse>? azureFile;
  /// Any errors that occurred during deployment or deployment validation
  final pulumi.Input<String> deploymentErrors;
  /// Provisioning state of the storage.
  final pulumi.Input<String> provisioningState;
  /// SMB storage properties
  final pulumi.Input<SmbStorageResponse>? smb;

  /// Creates a new [ConnectedEnvironmentStorageResponseProperties].
  /// [azureFile] Azure file properties
  /// [deploymentErrors] Any errors that occurred during deployment or deployment validation
  /// [provisioningState] Provisioning state of the storage.
  /// [smb] SMB storage properties
  const ConnectedEnvironmentStorageResponseProperties({
    this.azureFile,
    required this.deploymentErrors,
    required this.provisioningState,
    this.smb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile': ?pulumi.Input.mapOptionalInputValue<AzureFilePropertiesResponse, Map<String, dynamic>>(azureFile, (value) => value.toMap()),
      'deploymentErrors': deploymentErrors,
      'provisioningState': provisioningState,
      'smb': ?pulumi.Input.mapOptionalInputValue<SmbStorageResponse, Map<String, dynamic>>(smb, (value) => value.toMap()),
    };
  }

  factory ConnectedEnvironmentStorageResponseProperties.fromMap(Map<String, dynamic> map) {
    return ConnectedEnvironmentStorageResponseProperties(
      azureFile: (() { final guardedValue = map['azureFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFilePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deploymentErrors: pulumi.Input.fromValue(map['deploymentErrors'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      smb: (() { final guardedValue = map['smb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SmbStorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

