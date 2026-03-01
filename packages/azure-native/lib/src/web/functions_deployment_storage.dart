// ignore_for_file: unused_element, unnecessary_cast

import 'functions_deployment_authentication.dart';

/// Storage for deployed package used by the function app.
class FunctionsDeploymentStorage {
  /// Authentication method to access the storage account for deployment.
  final FunctionsDeploymentAuthentication? authentication;
  /// Property to select Azure Storage type. Available options: blobContainer.
  final String? type;
  /// Property to set the URL for the selected Azure Storage type. Example: For blobContainer, the value could be https://<storageAccountName>.blob.core.windows.net/<containerName>.
  final String? value;

  /// Creates a new [FunctionsDeploymentStorage].
  /// [authentication] Authentication method to access the storage account for deployment.
  /// [type] Property to select Azure Storage type. Available options: blobContainer.
  /// [value] Property to set the URL for the selected Azure Storage type. Example: For blobContainer, the value could be https://<storageAccountName>.blob.core.windows.net/<containerName>.
  FunctionsDeploymentStorage({
    this.authentication,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'type': ?type,
      'value': ?value,
    };
  }

  factory FunctionsDeploymentStorage.fromMap(Map<String, dynamic> map) {
    return FunctionsDeploymentStorage(
      authentication: map['authentication'] == null ? null : FunctionsDeploymentAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

