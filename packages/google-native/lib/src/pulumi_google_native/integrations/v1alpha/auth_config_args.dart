// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_credential_type.dart';
import 'auth_config_state.dart';
import 'auth_config_visibility.dart';
import 'google_cloud_integrations_v1alpha_credential.dart';

/// The set of arguments for AuthConfig.
class AuthConfigArgs {
  /// Certificate id for client certificate
  final pulumi.Input<String>? certificateId;

  /// The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  final pulumi.Input<String>? clientCertificateEncryptedPrivateKey;

  /// 'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web server, but an extra layer of security to protected private key.
  final pulumi.Input<String>? clientCertificatePassphrase;

  /// The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  final pulumi.Input<String>? clientCertificateSslCertificate;

  /// The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? creatorEmail;

  /// Credential type of the encrypted credential.
  final pulumi.Input<AuthConfigCredentialType>? credentialType;

  /// Raw auth credentials.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaCredential>?
      decryptedCredential;

  /// A description of the auth config.
  final pulumi.Input<String>? description;

  /// The name of the auth config.
  final pulumi.Input<String> displayName;

  /// Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with proper KMS key.
  final pulumi.Input<String>? encryptedCredential;

  /// User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.
  final pulumi.Input<List<String>>? expiryNotificationDuration;

  /// The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final pulumi.Input<String>? lastModifierEmail;
  final pulumi.Input<String>? location;

  /// Resource name of the SFDC instance projects/{project}/locations/{location}/authConfigs/{authConfig}.
  final pulumi.Input<String>? name;

  /// User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.
  final pulumi.Input<String>? overrideValidTime;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// The reason / details of the current status.
  final pulumi.Input<String>? reason;

  /// The status of the auth config.
  final pulumi.Input<AuthConfigState>? state;

  /// The time until the auth config is valid. Empty or max value is considered the auth config won't expire.
  final pulumi.Input<String>? validTime;

  /// The visibility of the auth config.
  final pulumi.Input<AuthConfigVisibility>? visibility;

  AuthConfigArgs({
    this.certificateId,
    this.clientCertificateEncryptedPrivateKey,
    this.clientCertificatePassphrase,
    this.clientCertificateSslCertificate,
    this.creatorEmail,
    this.credentialType,
    this.decryptedCredential,
    this.description,
    required this.displayName,
    this.encryptedCredential,
    this.expiryNotificationDuration,
    this.lastModifierEmail,
    this.location,
    this.name,
    this.overrideValidTime,
    required this.productId,
    this.project,
    this.reason,
    this.state,
    this.validTime,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateIdValue = certificateId;
    if (certificateIdValue != null) {
      map['certificateId'] = certificateIdValue;
    }
    final clientCertificateEncryptedPrivateKeyValue =
        clientCertificateEncryptedPrivateKey;
    if (clientCertificateEncryptedPrivateKeyValue != null) {
      map['clientCertificateEncryptedPrivateKey'] =
          clientCertificateEncryptedPrivateKeyValue;
    }
    final clientCertificatePassphraseValue = clientCertificatePassphrase;
    if (clientCertificatePassphraseValue != null) {
      map['clientCertificatePassphrase'] = clientCertificatePassphraseValue;
    }
    final clientCertificateSslCertificateValue =
        clientCertificateSslCertificate;
    if (clientCertificateSslCertificateValue != null) {
      map['clientCertificateSslCertificate'] =
          clientCertificateSslCertificateValue;
    }
    final creatorEmailValue = creatorEmail;
    if (creatorEmailValue != null) {
      map['creatorEmail'] = creatorEmailValue;
    }
    final credentialTypeValue = credentialType;
    if (credentialTypeValue != null) {
      map['credentialType'] =
          pulumi.Input.mapOptionalInputValue<AuthConfigCredentialType, String>(
              credentialTypeValue, (value) => value.value);
    }
    final decryptedCredentialValue = decryptedCredential;
    if (decryptedCredentialValue != null) {
      map['decryptedCredential'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudIntegrationsV1alphaCredential, Map<String, dynamic>>(
          decryptedCredentialValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final encryptedCredentialValue = encryptedCredential;
    if (encryptedCredentialValue != null) {
      map['encryptedCredential'] = encryptedCredentialValue;
    }
    final expiryNotificationDurationValue = expiryNotificationDuration;
    if (expiryNotificationDurationValue != null) {
      map['expiryNotificationDuration'] = expiryNotificationDurationValue;
    }
    final lastModifierEmailValue = lastModifierEmail;
    if (lastModifierEmailValue != null) {
      map['lastModifierEmail'] = lastModifierEmailValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final overrideValidTimeValue = overrideValidTime;
    if (overrideValidTimeValue != null) {
      map['overrideValidTime'] = overrideValidTimeValue;
    }
    map['productId'] = productId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final reasonValue = reason;
    if (reasonValue != null) {
      map['reason'] = reasonValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] =
          pulumi.Input.mapOptionalInputValue<AuthConfigState, String>(
              stateValue, (value) => value.value);
    }
    final validTimeValue = validTime;
    if (validTimeValue != null) {
      map['validTime'] = validTimeValue;
    }
    final visibilityValue = visibility;
    if (visibilityValue != null) {
      map['visibility'] =
          pulumi.Input.mapOptionalInputValue<AuthConfigVisibility, String>(
              visibilityValue, (value) => value.value);
    }
    return map;
  }

  factory AuthConfigArgs.fromMap(Map<String, dynamic> map) {
    return AuthConfigArgs(
      certificateId: pulumi.Input.asOptionalInput<String>(map['certificateId']),
      clientCertificateEncryptedPrivateKey:
          pulumi.Input.asOptionalInput<String>(
              map['clientCertificateEncryptedPrivateKey']),
      clientCertificatePassphrase: pulumi.Input.asOptionalInput<String>(
          map['clientCertificatePassphrase']),
      clientCertificateSslCertificate: pulumi.Input.asOptionalInput<String>(
          map['clientCertificateSslCertificate']),
      creatorEmail: pulumi.Input.asOptionalInput<String>(map['creatorEmail']),
      credentialType: pulumi.Input.asOptionalInput<AuthConfigCredentialType>(
          map['credentialType']),
      decryptedCredential: pulumi.Input.asOptionalInput<
          GoogleCloudIntegrationsV1alphaCredential>(map['decryptedCredential']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      encryptedCredential:
          pulumi.Input.asOptionalInput<String>(map['encryptedCredential']),
      expiryNotificationDuration: pulumi.Input.asOptionalInput<List<String>>(
          map['expiryNotificationDuration']),
      lastModifierEmail:
          pulumi.Input.asOptionalInput<String>(map['lastModifierEmail']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      overrideValidTime:
          pulumi.Input.asOptionalInput<String>(map['overrideValidTime']),
      productId: pulumi.Input.asInput<String>(map['productId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      reason: pulumi.Input.asOptionalInput<String>(map['reason']),
      state: pulumi.Input.asOptionalInput<AuthConfigState>(map['state']),
      validTime: pulumi.Input.asOptionalInput<String>(map['validTime']),
      visibility:
          pulumi.Input.asOptionalInput<AuthConfigVisibility>(map['visibility']),
    );
  }
}
