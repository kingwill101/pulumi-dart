// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the creation time.
  final String creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets the expiry time of the certificate.
  final String expiryTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Gets the is exportable flag of the certificate.
  final bool isExportable;
  /// Gets the last modified time.
  final String lastModifiedTime;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Gets the thumbprint of the certificate.
  final String thumbprint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] Gets the creation time.
  /// [description] Gets or sets the description.
  /// [expiryTime] Gets the expiry time of the certificate.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isExportable] Gets the is exportable flag of the certificate.
  /// [lastModifiedTime] Gets the last modified time.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [thumbprint] Gets the thumbprint of the certificate.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCertificateResult({
    required this.azureApiVersion,
    required this.creationTime,
    this.description,
    required this.expiryTime,
    required this.id,
    required this.isExportable,
    required this.lastModifiedTime,
    required this.name,
    required this.systemData,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationTime': creationTime,
      'description': ?description,
      'expiryTime': expiryTime,
      'id': id,
      'isExportable': isExportable,
      'lastModifiedTime': lastModifiedTime,
      'name': name,
      'systemData': systemData.toMap(),
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationTime: map['creationTime'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiryTime: map['expiryTime'] as String,
      id: map['id'] as String,
      isExportable: map['isExportable'] as bool,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
    );
  }
}
