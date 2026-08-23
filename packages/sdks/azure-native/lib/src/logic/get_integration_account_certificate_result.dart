// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_key_reference_response.dart';

/// Result data returned by getIntegrationAccountCertificate.
class GetIntegrationAccountCertificateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The changed time.
  final String changedTime;
  /// The created time.
  final String createdTime;
  /// The resource id.
  final String id;
  /// The key details in the key vault.
  final KeyVaultKeyReferenceResponse? key;
  /// The resource location.
  final String? location;
  /// The metadata.
  final dynamic metadata;
  /// Gets the resource name.
  final String name;
  /// The public certificate.
  final String? publicCertificate;
  /// The resource tags.
  final Map<String, String>? tags;
  /// Gets the resource type.
  final String type;

  /// Creates a new [GetIntegrationAccountCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [changedTime] The changed time.
  /// [createdTime] The created time.
  /// [id] The resource id.
  /// [key] The key details in the key vault.
  /// [location] The resource location.
  /// [metadata] The metadata.
  /// [name] Gets the resource name.
  /// [publicCertificate] The public certificate.
  /// [tags] The resource tags.
  /// [type] Gets the resource type.
  const GetIntegrationAccountCertificateResult({
    required this.azureApiVersion,
    required this.changedTime,
    required this.createdTime,
    required this.id,
    this.key,
    this.location,
    this.metadata,
    required this.name,
    this.publicCertificate,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'changedTime': changedTime,
      'createdTime': createdTime,
      'id': id,
      'key': ?key?.toMap(),
      'location': ?location,
      'metadata': ?metadata,
      'name': name,
      'publicCertificate': ?publicCertificate,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIntegrationAccountCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountCertificateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      changedTime: map['changedTime'] as String,
      createdTime: map['createdTime'] as String,
      id: map['id'] as String,
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return KeyVaultKeyReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue; })(),
      name: map['name'] as String,
      publicCertificate: (() { final guardedValue = map['publicCertificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
