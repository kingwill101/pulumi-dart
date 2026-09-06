// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets the creation time.
  final String? creationTime;
  /// Gets or sets the description.
  final String? description;
  /// Gets the expiry time of the certificate.
  final String? expiryTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Gets the is exportable flag of the certificate.
  final bool? isExportable;
  /// Gets the last modified time.
  final String? lastModifiedTime;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Gets the thumbprint of the certificate.
  final String? thumbprint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.azureApiVersion,
    this.creationTime,
    this.description,
    this.expiryTime,
    this.id,
    this.isExportable,
    this.lastModifiedTime,
    this.name,
    this.systemData,
    this.thumbprint,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'creationTime': ?creationTime,
      'description': ?description,
      'expiryTime': ?expiryTime,
      'id': ?id,
      'isExportable': ?isExportable,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'thumbprint': ?thumbprint,
      'type': ?type,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiryTime: (() { final guardedValue = map['expiryTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isExportable: (() { final guardedValue = map['isExportable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
