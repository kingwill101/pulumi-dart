// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_properties_response.dart';

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The entity tag.
  final String etag;
  /// The resource identifier.
  final String id;
  /// The name of the certificate.
  final String name;
  /// The description of an X509 CA Certificate.
  final CertificatePropertiesResponse properties;
  /// The resource type.
  final String type;

  /// Creates a new [GetCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The entity tag.
  /// [id] The resource identifier.
  /// [name] The name of the certificate.
  /// [properties] The description of an X509 CA Certificate.
  /// [type] The resource type.
  const GetCertificateResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: CertificatePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

