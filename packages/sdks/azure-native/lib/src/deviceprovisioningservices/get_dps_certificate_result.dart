// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDpsCertificate.
class GetDpsCertificateResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The entity tag.
  final String? etag;
  /// The resource identifier.
  final String? id;
  /// The name of the certificate.
  final String? name;
  /// properties of a certificate
  final CertificatePropertiesResponse? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The resource type.
  final String? type;

  /// Creates a new [GetDpsCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The entity tag.
  /// [id] The resource identifier.
  /// [name] The name of the certificate.
  /// [properties] properties of a certificate
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The resource type.
  const GetDpsCertificateResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.name,
    this.properties,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDpsCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetDpsCertificateResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return CertificatePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
