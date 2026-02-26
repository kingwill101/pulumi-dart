import 'package:pulumi/pulumi.dart';
import 'auth_config_args.dart';
import 'google_cloud_integrations_v1alpha_credential_response.dart';

/// Creates an auth config record. Fetch corresponding credentials for specific auth types, e.g. access token for OAuth 2.0, JWT token for JWT. Encrypt the auth config with Cloud KMS and store the encrypted credentials in Spanner. Returns the encrypted auth config.
/// Auto-naming is currently not supported for this resource.
class AuthConfig2 extends CustomResource {
  /// Certificate id for client certificate
  late final Output<String> certificateId;

  /// The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  late final Output<String?> clientCertificateEncryptedPrivateKey;

  /// 'passphrase' should be left unset if private key is not encrypted. Note that 'passphrase' is not the password for web server, but an extra layer of security to protected private key.
  late final Output<String?> clientCertificatePassphrase;

  /// The ssl certificate encoded in PEM format. This string must include the begin header and end footer lines. For example, -----BEGIN CERTIFICATE----- MIICTTCCAbagAwIBAgIJAPT0tSKNxan/MA0GCSqGSIb3DQEBCwUAMCoxFzAVBgNV BAoTDkdvb2dsZSBURVNUSU5HMQ8wDQYDVQQDEwZ0ZXN0Q0EwHhcNMTUwMTAxMDAw MDAwWhcNMjUwMTAxMDAwMDAwWjAuMRcwFQYDVQQKEw5Hb29nbGUgVEVTVElORzET MBEGA1UEAwwKam9lQGJhbmFuYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA vDYFgMgxi5W488d9J7UpCInl0NXmZQpJDEHE4hvkaRlH7pnC71H0DLt0/3zATRP1 JzY2+eqBmbGl4/sgZKYv8UrLnNyQNUTsNx1iZAfPUflf5FwgVsai8BM0pUciq1NB xD429VFcrGZNucvFLh72RuRFIKH8WUpiK/iZNFkWhZ0CAwEAAaN3MHUwDgYDVR0P AQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMB Af8EAjAAMBkGA1UdDgQSBBCVgnFBCWgL/iwCqnGrhTPQMBsGA1UdIwQUMBKAEKey Um2o4k2WiEVA0ldQvNYwDQYJKoZIhvcNAQELBQADgYEAYK986R4E3L1v+Q6esBtW JrUwA9UmJRSQr0N5w3o9XzarU37/bkjOP0Fw0k/A6Vv1n3vlciYfBFaBIam1qRHr 5dMsYf4CZS6w50r7hyzqyrwDoyNxkLnd2PdcHT/sym1QmflsjEs7pejtnohO6N2H wQW6M0H7Zt8claGRla4fKkg= -----END CERTIFICATE-----
  late final Output<String?> clientCertificateSslCertificate;

  /// The timestamp when the auth config is created.
  late final Output<String> createTime;

  /// The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  late final Output<String> creatorEmail;

  /// Credential type of the encrypted credential.
  late final Output<String> credentialType;

  /// Raw auth credentials.
  late final Output<GoogleCloudIntegrationsV1alphaCredentialResponse>
      decryptedCredential;

  /// A description of the auth config.
  late final Output<String> description;

  /// The name of the auth config.
  late final Output<String> displayName;

  /// Auth credential encrypted by Cloud KMS. Can be decrypted as Credential with proper KMS key.
  late final Output<String> encryptedCredential;

  /// User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.
  late final Output<List<String>> expiryNotificationDuration;

  /// The last modifier's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  late final Output<String> lastModifierEmail;
  late final Output<String> location;

  /// Resource name of the SFDC instance projects/{project}/locations/{location}/authConfigs/{authConfig}.
  late final Output<String> name;

  /// User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.
  late final Output<String> overrideValidTime;
  late final Output<String> productId;
  late final Output<String> project;

  /// The reason / details of the current status.
  late final Output<String> reason;

  /// The status of the auth config.
  late final Output<String> state;

  /// The timestamp when the auth config is modified.
  late final Output<String> updateTime;

  /// The time until the auth config is valid. Empty or max value is considered the auth config won't expire.
  late final Output<String> validTime;

  /// The visibility of the auth config.
  late final Output<String> visibility;

  AuthConfig2(
    String name, {
    AuthConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:integrations/v1alpha:AuthConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateId = registerOutput<String>('certificateId');
    this.clientCertificateEncryptedPrivateKey =
        registerOutput<String?>('clientCertificateEncryptedPrivateKey');
    this.clientCertificatePassphrase =
        registerOutput<String?>('clientCertificatePassphrase');
    this.clientCertificateSslCertificate =
        registerOutput<String?>('clientCertificateSslCertificate');
    this.createTime = registerOutput<String>('createTime');
    this.creatorEmail = registerOutput<String>('creatorEmail');
    this.credentialType = registerOutput<String>('credentialType');
    this.decryptedCredential =
        registerOutput<GoogleCloudIntegrationsV1alphaCredentialResponse>(
            'decryptedCredential');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.encryptedCredential = registerOutput<String>('encryptedCredential');
    this.expiryNotificationDuration =
        registerOutput<List<String>>('expiryNotificationDuration');
    this.lastModifierEmail = registerOutput<String>('lastModifierEmail');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.overrideValidTime = registerOutput<String>('overrideValidTime');
    this.productId = registerOutput<String>('productId');
    this.project = registerOutput<String>('project');
    this.reason = registerOutput<String>('reason');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.validTime = registerOutput<String>('validTime');
    this.visibility = registerOutput<String>('visibility');
  }
}
