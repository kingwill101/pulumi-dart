// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure container mapping of the endpoint.
class AzureContainerInfoResponse {
  /// Container name (Based on the data format specified, this represents the name of Azure Files/Page blob/Block blob).
  final pulumi.Input<String> containerName;
  /// Storage format used for the file represented by the share.
  final pulumi.Input<String> dataFormat;
  /// ID of the storage account credential used to access storage.
  final pulumi.Input<String> storageAccountCredentialId;

  /// Creates a new [AzureContainerInfoResponse].
  /// [containerName] Container name (Based on the data format specified, this represents the name of Azure Files/Page blob/Block blob).
  /// [dataFormat] Storage format used for the file represented by the share.
  /// [storageAccountCredentialId] ID of the storage account credential used to access storage.
  const AzureContainerInfoResponse({
    required this.containerName,
    required this.dataFormat,
    required this.storageAccountCredentialId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'dataFormat': dataFormat,
      'storageAccountCredentialId': storageAccountCredentialId,
    };
  }

  factory AzureContainerInfoResponse.fromMap(Map<String, dynamic> map) {
    return AzureContainerInfoResponse(
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      dataFormat: pulumi.Input.fromValue(map['dataFormat'] as String),
      storageAccountCredentialId: pulumi.Input.fromValue(map['storageAccountCredentialId'] as String),
    );
  }
}

