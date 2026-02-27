import 'package:pulumi/pulumi.dart' as pulumi;
import '../authority_access_url/authority_access_url.dart';
import '../authority_config/authority_config.dart';
import '../authority_key_spec/authority_key_spec.dart';
import '../authority_subordinate_config/authority_subordinate_config.dart';
import '../authority_user_defined_access_urls/authority_user_defined_access_urls.dart';
import 'authority_args.dart';

/// A CertificateAuthority represents an individual Certificate Authority. A
/// CertificateAuthority can be used to create Certificates.
///
///
/// To get more information about CertificateAuthority, see:
///
/// * [API documentation](https://cloud.google.com/certificate-authority-service/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/certificate-authority-service)
///
/// > **Warning:** On newer versions of the provider, you must explicitly set `deletion_protection=false`
/// (and run `pulumi up` to write the field to state) in order to destroy a CertificateAuthority.
/// It is recommended to not set this field (or set it to true) until you're ready to destroy.
///
/// ## Example Usage
///
/// ### Privateca Certificate Authority Basic
///
///
///
/// ### Privateca Certificate Authority Basic No Org
///
///
///
/// ### Privateca Certificate Authority Subordinate
///
///
///
/// ### Privateca Certificate Authority Byo Key
///
///
///
/// ### Privateca Certificate Authority Custom Ski
///
///
///
/// ### Privateca Certificate Authority Basic With Custom Cdp Aia Urls
///
///
///
///
/// ## Import
///
/// CertificateAuthority can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/caPools/{{pool}}/certificateAuthorities/{{certificate_authority_id}}`
///
/// * `{{project}}/{{location}}/{{pool}}/{{certificate_authority_id}}`
///
/// * `{{location}}/{{pool}}/{{certificate_authority_id}}`
///
/// When using the `pulumi import` command, CertificateAuthority can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/authority:Authority default projects/{{project}}/locations/{{location}}/caPools/{{pool}}/certificateAuthorities/{{certificate_authority_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/authority:Authority default {{project}}/{{location}}/{{pool}}/{{certificate_authority_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/authority:Authority default {{location}}/{{pool}}/{{certificate_authority_id}}
/// ```
class Authority extends pulumi.CustomResource {
  /// URLs for accessing content published by this CA, such as the CA certificate and CRLs.
  /// Structure is documented below.
  late final pulumi.Output<List<AuthorityAccessUrl>> accessUrls;

  /// The user provided Resource ID for this Certificate Authority.
  late final pulumi.Output<String> certificateAuthorityId;

  /// The config used to create a self-signed X.509 certificate or CSR.
  /// Structure is documented below.
  late final pulumi.Output<AuthorityConfig> config;

  /// The time at which this CertificateAuthority was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<bool?> deletionProtection;

  /// Desired state of the CertificateAuthority. Set this field to `STAGED` to create a `STAGED` root CA.
  /// Possible values: ENABLED, DISABLED, STAGED.
  late final pulumi.Output<String?> desiredState;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The name of a Cloud Storage bucket where this CertificateAuthority will publish content,
  /// such as the CA certificate and CRLs. This must be a bucket name, without any prefixes
  /// (such as `gs://`) or suffixes (such as `.googleapis.com`). For example, to use a bucket named
  /// my-bucket, you would simply specify `my-bucket`. If not specified, a managed bucket will be
  /// created.
  late final pulumi.Output<String?> gcsBucket;

  /// This field allows the CA to be deleted even if the CA has active certs. Active certs include both unrevoked and unexpired certs.
  /// Use with care. Defaults to `false`.
  late final pulumi.Output<bool?> ignoreActiveCertificatesOnDeletion;

  /// Used when issuing certificates for this CertificateAuthority. If this CertificateAuthority
  /// is a self-signed CertificateAuthority, this key is also used to sign the self-signed CA
  /// certificate. Otherwise, it is used to sign a CSR.
  /// Structure is documented below.
  late final pulumi.Output<AuthorityKeySpec> keySpec;

  /// Labels with user-defined metadata.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass":
  /// "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// "notAfterTime" fields inside an X.509 certificate. A duration in seconds with up to nine
  /// fractional digits, terminated by 's'. Example: "3.5s".
  late final pulumi.Output<String?> lifetime;

  /// Location of the CertificateAuthority. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  late final pulumi.Output<String> location;

  /// The resource name for this CertificateAuthority in the format
  /// projects/*/locations/*/certificateAuthorities/*.
  late final pulumi.Output<String> name;

  /// The signed CA certificate issued from the subordinated CA's CSR. This is needed when activating the subordiante CA with a third party issuer.
  late final pulumi.Output<String?> pemCaCertificate;

  /// This CertificateAuthority's certificate chain, including the current
  /// CertificateAuthority's certificate. Ordered such that the root issuer is the final
  /// element (consistent with RFC 5246). For a self-signed CA, this will only list the current
  /// CertificateAuthority's certificate.
  late final pulumi.Output<List<String>> pemCaCertificates;

  /// The name of the CaPool this Certificate Authority belongs to.
  late final pulumi.Output<String> pool;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// If this flag is set, the Certificate Authority will be deleted as soon as
  /// possible without a 30-day grace period where undeletion would have been
  /// allowed. If you proceed, there will be no way to recover this CA.
  /// Use with care. Defaults to `false`.
  late final pulumi.Output<bool?> skipGracePeriod;

  /// The State for this CertificateAuthority.
  late final pulumi.Output<String> state;

  /// If this is a subordinate CertificateAuthority, this field will be set
  /// with the subordinate configuration, which describes its issuers.
  /// Structure is documented below.
  late final pulumi.Output<AuthoritySubordinateConfig?> subordinateConfig;

  /// The Type of this CertificateAuthority.
  /// > **Note:** For `SUBORDINATE` Certificate Authorities, they need to
  /// be activated before they can issue certificates.
  /// Default value is `SELF_SIGNED`.
  /// Possible values are: `SELF_SIGNED`, `SUBORDINATE`.
  late final pulumi.Output<String?> type;

  /// The time at which this CertificateAuthority was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Custom URLs for accessing content published by this CA, such as the CA certificate and CRLs,
  /// that can be specified by users.
  /// Structure is documented below.
  late final pulumi.Output<AuthorityUserDefinedAccessUrls?>
      userDefinedAccessUrls;

  Authority(
    String name, {
    AuthorityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/authority:Authority',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessUrls = registerOutput<List<AuthorityAccessUrl>>('accessUrls');
    this.certificateAuthorityId =
        registerOutput<String>('certificateAuthorityId');
    this.config = registerOutput<AuthorityConfig>('config');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.desiredState = registerOutput<String?>('desiredState');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.gcsBucket = registerOutput<String?>('gcsBucket');
    this.ignoreActiveCertificatesOnDeletion =
        registerOutput<bool?>('ignoreActiveCertificatesOnDeletion');
    this.keySpec = registerOutput<AuthorityKeySpec>('keySpec');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lifetime = registerOutput<String?>('lifetime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.pemCaCertificate = registerOutput<String?>('pemCaCertificate');
    this.pemCaCertificates = registerOutput<List<String>>('pemCaCertificates');
    this.pool = registerOutput<String>('pool');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.skipGracePeriod = registerOutput<bool?>('skipGracePeriod');
    this.state = registerOutput<String>('state');
    this.subordinateConfig =
        registerOutput<AuthoritySubordinateConfig?>('subordinateConfig');
    this.type = registerOutput<String?>('type');
    this.updateTime = registerOutput<String>('updateTime');
    this.userDefinedAccessUrls =
        registerOutput<AuthorityUserDefinedAccessUrls?>(
            'userDefinedAccessUrls');
  }
}
