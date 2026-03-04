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
      'secrets':
          pulumi.Input.mapInputValue<
            CertificateDatastoreSecrets,
            Map<String, dynamic>
          >(secrets, (value) => value.toMap()),
      'tenantId': tenantId,
      'thumbprint': thumbprint,
    };
  }

  factory CertificateDatastoreCredentials.fromMap(Map<String, dynamic> map) {
    return CertificateDatastoreCredentials(
      authorityUrl: (() {
        final guardedValue = map['authorityUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      credentialsType: pulumi.Input.fromValue(map['credentialsType'] as String),
      resourceUrl: (() {
        final guardedValue = map['resourceUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secrets: pulumi.Input.fromValue(
        CertificateDatastoreSecrets.fromMap(
          (map['secrets']! as Map).cast<String, dynamic>(),
        ),
      ),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
    );
  }
}
