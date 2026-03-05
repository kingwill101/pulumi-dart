// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getDpsCertificate.
class GetDpsCertificateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The entity tag.
  final String etag;
  /// The resource identifier.
  final String id;
  /// The name of the certificate.
  final String name;
  /// properties of a certificate
  final CertificatePropertiesResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The resource type.
  final String type;

  /// Creates a new [GetDpsCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The entity tag.
  /// [id] The resource identifier.
  /// [name] The name of the certificate.
  /// [properties] properties of a certificate
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The resource type.
  GetDpsCertificateResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.name,
    required this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetDpsCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetDpsCertificateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: CertificatePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

