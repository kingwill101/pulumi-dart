// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../authority_config/authority_config.dart';
import '../authority_key_spec/authority_key_spec.dart';
import '../authority_subordinate_config/authority_subordinate_config.dart';
import '../authority_user_defined_access_urls/authority_user_defined_access_urls.dart';

/// The set of arguments for Authority.
class AuthorityArgs {
  /// The user provided Resource ID for this Certificate Authority.
  final Input<String> certificateAuthorityId;

  /// The config used to create a self-signed X.509 certificate or CSR.
  /// Structure is documented below.
  final Input<AuthorityConfig> config;
  final Input<bool>? deletionProtection;

  /// Desired state of the CertificateAuthority. Set this field to `STAGED` to create a `STAGED` root CA.
  /// Possible values: ENABLED, DISABLED, STAGED.
  final Input<String>? desiredState;

  /// The name of a Cloud Storage bucket where this CertificateAuthority will publish content,
  /// such as the CA certificate and CRLs. This must be a bucket name, without any prefixes
  /// (such as `gs://`) or suffixes (such as `.googleapis.com`). For example, to use a bucket named
  /// my-bucket, you would simply specify `my-bucket`. If not specified, a managed bucket will be
  /// created.
  final Input<String>? gcsBucket;

  /// This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked and unexpired certs.
  /// Use with care. Defaults to `false`.
  final Input<bool>? ignoreActiveCertificatesOnDeletion;

  /// Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority
  /// is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA
  /// certificate. Otherwise, it is used to sign a CSR.
  /// Structure is documented below.
  final Input<AuthorityKeySpec> keySpec;

  /// Labels with user-defined metadata.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass":
  /// "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// "notAfterTime" fields inside an X.509 certificate. A duration in seconds with up to nine
  /// fractional digits, terminated by 's'. Example: "3.5s".
  final Input<String>? lifetime;

  /// Location of the CertificateAuthority. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  final Input<String> location;

  /// The signed CA certificate issued from the subordinated CA's CSR. This is needed when activating the subordiante CA with a third party issuer.
  final Input<String>? pemCaCertificate;

  /// The name of the CaPool this Certificate Authority belongs to.
  final Input<String> pool;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// If this flag is set, the Certificate Authority will be deleted as soon as
  /// possible without a 30-day grace period where undeletion would have been
  /// allowed. If you proceed, there will be no way to recover this CA.
  /// Use with care. Defaults to `false`.
  final Input<bool>? skipGracePeriod;

  /// If this is a subordinate CertificateAuthority, this field will be set
  /// with the subordinate configuration, which describes its issuers.
  /// Structure is documented below.
  final Input<AuthoritySubordinateConfig>? subordinateConfig;

  /// The Type of this CertificateAuthority.
  /// > **Note:** For `SUBORDINATE` Certificate Authorities, they need to
  /// be activated before they can issue certificates.
  /// Default value is `SELF_SIGNED`.
  /// Possible values are: `SELF_SIGNED`, `SUBORDINATE`.
  final Input<String>? type;

  /// Custom URLs for accessing content published by this CA, such as the CA certificate and CRLs,
  /// that can be specified by users.
  /// Structure is documented below.
  final Input<AuthorityUserDefinedAccessUrls>? userDefinedAccessUrls;

  AuthorityArgs({
    required this.certificateAuthorityId,
    required this.config,
    this.deletionProtection,
    this.desiredState,
    this.gcsBucket,
    this.ignoreActiveCertificatesOnDeletion,
    required this.keySpec,
    this.labels,
    this.lifetime,
    required this.location,
    this.pemCaCertificate,
    required this.pool,
    this.project,
    this.skipGracePeriod,
    this.subordinateConfig,
    this.type,
    this.userDefinedAccessUrls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateAuthorityId'] = certificateAuthorityId;
    map['config'] = Input.mapInputValue<AuthorityConfig, Map<String, dynamic>>(
        config, (value) => value.toMap());
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue;
    }
    final gcsBucketValue = gcsBucket;
    if (gcsBucketValue != null) {
      map['gcsBucket'] = gcsBucketValue;
    }
    final ignoreActiveCertificatesOnDeletionValue =
        ignoreActiveCertificatesOnDeletion;
    if (ignoreActiveCertificatesOnDeletionValue != null) {
      map['ignoreActiveCertificatesOnDeletion'] =
          ignoreActiveCertificatesOnDeletionValue;
    }
    map['keySpec'] =
        Input.mapInputValue<AuthorityKeySpec, Map<String, dynamic>>(
            keySpec, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final lifetimeValue = lifetime;
    if (lifetimeValue != null) {
      map['lifetime'] = lifetimeValue;
    }
    map['location'] = location;
    final pemCaCertificateValue = pemCaCertificate;
    if (pemCaCertificateValue != null) {
      map['pemCaCertificate'] = pemCaCertificateValue;
    }
    map['pool'] = pool;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final skipGracePeriodValue = skipGracePeriod;
    if (skipGracePeriodValue != null) {
      map['skipGracePeriod'] = skipGracePeriodValue;
    }
    final subordinateConfigValue = subordinateConfig;
    if (subordinateConfigValue != null) {
      map['subordinateConfig'] = Input.mapOptionalInputValue<
              AuthoritySubordinateConfig, Map<String, dynamic>>(
          subordinateConfigValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final userDefinedAccessUrlsValue = userDefinedAccessUrls;
    if (userDefinedAccessUrlsValue != null) {
      map['userDefinedAccessUrls'] = Input.mapOptionalInputValue<
              AuthorityUserDefinedAccessUrls, Map<String, dynamic>>(
          userDefinedAccessUrlsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AuthorityArgs.fromMap(Map<String, dynamic> map) {
    return AuthorityArgs(
      certificateAuthorityId:
          Input.asInput<String>(map['certificateAuthorityId']),
      config: Input.asInput<AuthorityConfig>(map['config']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      desiredState: Input.asOptionalInput<String>(map['desiredState']),
      gcsBucket: Input.asOptionalInput<String>(map['gcsBucket']),
      ignoreActiveCertificatesOnDeletion: Input.asOptionalInput<bool>(
          map['ignoreActiveCertificatesOnDeletion']),
      keySpec: Input.asInput<AuthorityKeySpec>(map['keySpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lifetime: Input.asOptionalInput<String>(map['lifetime']),
      location: Input.asInput<String>(map['location']),
      pemCaCertificate: Input.asOptionalInput<String>(map['pemCaCertificate']),
      pool: Input.asInput<String>(map['pool']),
      project: Input.asOptionalInput<String>(map['project']),
      skipGracePeriod: Input.asOptionalInput<bool>(map['skipGracePeriod']),
      subordinateConfig: Input.asOptionalInput<AuthoritySubordinateConfig>(
          map['subordinateConfig']),
      type: Input.asOptionalInput<String>(map['type']),
      userDefinedAccessUrls:
          Input.asOptionalInput<AuthorityUserDefinedAccessUrls>(
              map['userDefinedAccessUrls']),
    );
  }
}
