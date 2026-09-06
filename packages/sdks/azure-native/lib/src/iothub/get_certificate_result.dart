// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_properties_response.dart';

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The entity tag.
  final String? etag;
  /// The resource identifier.
  final String? id;
  /// The name of the certificate.
  final String? name;
  /// The description of an X509 CA Certificate.
  final CertificatePropertiesResponse? properties;
  /// The resource type.
  final String? type;

  /// Creates a new [GetCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The entity tag.
  /// [id] The resource identifier.
  /// [name] The name of the certificate.
  /// [properties] The description of an X509 CA Certificate.
  /// [type] The resource type.
  const GetCertificateResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return CertificatePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
