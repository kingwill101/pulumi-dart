// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCaCertificate.
class GetCaCertificateResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Description for the CA Certificate resource.
  final String? description;
  /// Base64 encoded PEM (Privacy Enhanced Mail) format certificate data.
  final String? encodedCertificate;
  /// Certificate expiry time in UTC. This is a read-only field.
  final String? expiryTimeInUtc;
  /// Fully qualified identifier of the resource.
  final String? id;
  /// Certificate issue time in UTC. This is a read-only field.
  final String? issueTimeInUtc;
  /// Name of the resource.
  final String? name;
  /// Provisioning state of the CA Certificate resource.
  final String? provisioningState;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse? systemData;
  /// Type of the resource.
  final String? type;

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
    this.azureApiVersion,
    this.description,
    this.encodedCertificate,
    this.expiryTimeInUtc,
    this.id,
    this.issueTimeInUtc,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'encodedCertificate': ?encodedCertificate,
      'expiryTimeInUtc': ?expiryTimeInUtc,
      'id': ?id,
      'issueTimeInUtc': ?issueTimeInUtc,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetCaCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCaCertificateResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encodedCertificate: (() { final guardedValue = map['encodedCertificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiryTimeInUtc: (() { final guardedValue = map['expiryTimeInUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issueTimeInUtc: (() { final guardedValue = map['issueTimeInUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
