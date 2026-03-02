// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_datastore_secrets.dart';

/// Certificate datastore credentials configuration.
class CertificateDatastoreCredentials {
  /// Authority URL used for authentication.
  final pulumi.Input<String>? authorityUrl;
  /// [Required] Service principal client ID.
  final pulumi.Input<String> clientId;
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'Certificate'.
  final pulumi.Input<String> credentialsType;
  /// Resource the service principal has access to.
  final pulumi.Input<String>? resourceUrl;
  /// [Required] Service principal secrets.
  final pulumi.Input<CertificateDatastoreSecrets> secrets;
  /// [Required] ID of the tenant to which the service principal belongs.
  final pulumi.Input<String> tenantId;
  /// [Required] Thumbprint of the certificate used for authentication.
  final pulumi.Input<String> thumbprint;

  /// Creates a new [CertificateDatastoreCredentials].
  /// [authorityUrl] Authority URL used for authentication.
  /// [clientId] [Required] Service principal client ID.
  /// [credentialsType] Enum to determine the datastore credentials type.
  /// [resourceUrl] Resource the service principal has access to.
  /// [secrets] [Required] Service principal secrets.
  /// [tenantId] [Required] ID of the tenant to which the service principal belongs.
  /// [thumbprint] [Required] Thumbprint of the certificate used for authentication.
  CertificateDatastoreCredentials({
    this.authorityUrl,
    required this.clientId,
    required this.credentialsType,
    this.resourceUrl,
    required this.secrets,
    required this.tenantId,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorityUrl': ?authorityUrl,
      'clientId': clientId,
      'credentialsType': credentialsType,
      'resourceUrl': ?resourceUrl,
      'secrets': pulumi.Input.mapInputValue<CertificateDatastoreSecrets, Map<String, dynamic>>(secrets, (value) => value.toMap()),
      'tenantId': tenantId,
      'thumbprint': thumbprint,
    };
  }

  factory CertificateDatastoreCredentials.fromMap(Map<String, dynamic> map) {
    return CertificateDatastoreCredentials(
      authorityUrl: map['authorityUrl'] == null ? null : (map['authorityUrl']! as String).input(),
      clientId: (map['clientId'] as String).input(),
      credentialsType: (map['credentialsType'] as String).input(),
      resourceUrl: map['resourceUrl'] == null ? null : (map['resourceUrl']! as String).input(),
      secrets: (CertificateDatastoreSecrets.fromMap((map['secrets'] as Map).cast<String, dynamic>())).input(),
      tenantId: (map['tenantId'] as String).input(),
      thumbprint: (map['thumbprint'] as String).input(),
    );
  }
}

