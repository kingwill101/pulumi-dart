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
  GetIntegrationAccountCertificateResult({
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
      'key': ?key == null ? null : key!.toMap(),
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
      key: map['key'] == null ? null : KeyVaultKeyReferenceResponse.fromMap((map['key'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      metadata: map['metadata'] == null ? null : map['metadata'],
      name: map['name'] as String,
      publicCertificate: map['publicCertificate'] == null ? null : map['publicCertificate'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

