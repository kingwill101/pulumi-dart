// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCaCertificate.
class GetCaCertificateResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Description for the CA Certificate resource.
  final String? description;
  /// Base64 encoded PEM (Privacy Enhanced Mail) format certificate data.
  final String? encodedCertificate;
  /// Certificate expiry time in UTC. This is a read-only field.
  final String expiryTimeInUtc;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Certificate issue time in UTC. This is a read-only field.
  final String issueTimeInUtc;
  /// Name of the resource.
  final String name;
  /// Provisioning state of the CA Certificate resource.
  final String provisioningState;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetCaCertificateResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] Description for the CA Certificate resource.
  /// [encodedCertificate] Base64 encoded PEM (Privacy Enhanced Mail) format certificate data.
  /// [expiryTimeInUtc] Certificate expiry time in UTC. This is a read-only field.
  /// [id] Fully qualified identifier of the resource.
  /// [issueTimeInUtc] Certificate issue time in UTC. This is a read-only field.
  /// [name] Name of the resource.
  /// [provisioningState] Provisioning state of the CA Certificate resource.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [type] Type of the resource.
  const GetCaCertificateResult({
    required this.azureApiVersion,
    this.description,
    this.encodedCertificate,
    required this.expiryTimeInUtc,
    required this.id,
    required this.issueTimeInUtc,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'encodedCertificate': ?encodedCertificate,
      'expiryTimeInUtc': expiryTimeInUtc,
      'id': id,
      'issueTimeInUtc': issueTimeInUtc,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetCaCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCaCertificateResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encodedCertificate: (() { final guardedValue = map['encodedCertificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiryTimeInUtc: map['expiryTimeInUtc'] as String,
      id: map['id'] as String,
      issueTimeInUtc: map['issueTimeInUtc'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
