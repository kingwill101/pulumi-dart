import 'package:pulumi/pulumi.dart' as pulumi;
import '../certificate_certificate_description/certificate_certificate_description.dart';
import '../certificate_config/certificate_config.dart';
import '../certificate_revocation_detail/certificate_revocation_detail.dart';
import 'certificate_args.dart';

/// A Certificate corresponds to a signed X.509 certificate issued by a Certificate.
///
///
/// > **Note:** The Certificate Authority that is referenced by this resource **must** be
/// `tier = "ENTERPRISE"`
///
///
///
/// ## Example Usage
///
/// ### Privateca Certificate Generated Key
///
///
///
/// ### Privateca Certificate With Template
///
///
///
/// ### Privateca Certificate Csr
///
///
///
/// ### Privateca Certificate No Authority
///
///
///
/// ### Privateca Certificate Custom Ski
///
///
///
///
/// ## Import
///
/// Certificate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/caPools/{{pool}}/certificates/{{name}}`
///
/// * `{{project}}/{{location}}/{{pool}}/{{name}}`
///
/// * `{{location}}/{{pool}}/{{name}}`
///
/// When using the `pulumi import` command, Certificate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificate:Certificate default projects/{{project}}/locations/{{location}}/caPools/{{pool}}/certificates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificate:Certificate default {{project}}/{{location}}/{{pool}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificate:Certificate default {{location}}/{{pool}}/{{name}}
/// ```
class Certificate extends pulumi.CustomResource {
  /// The Certificate Authority ID that should issue the certificate. For example, to issue a Certificate from
  /// a Certificate Authority with resource name `projects/my-project/locations/us-central1/caPools/my-pool/certificateAuthorities/my-ca`,
  /// argument `pool` should be set to `projects/my-project/locations/us-central1/caPools/my-pool`, argument `certificate_authority`
  /// should be set to `my-ca`.
  late final pulumi.Output<String?> certificateAuthority;

  /// Output only. Details regarding the revocation of this Certificate. This Certificate is considered revoked if and only if this field is present.
  /// Structure is documented below.
  late final pulumi.Output<List<CertificateCertificateDescription>>
      certificateDescriptions;

  /// The resource name for a CertificateTemplate used to issue this certificate,
  /// in the format `projects/*/locations/*/certificateTemplates/*`. If this is specified,
  /// the caller must have the necessary permission to use this template. If this is
  /// omitted, no template will be used. This template must be in the same location
  /// as the Certificate.
  late final pulumi.Output<String?> certificateTemplate;

  /// The config used to create a self-signed X.509 certificate or CSR.
  /// Structure is documented below.
  late final pulumi.Output<CertificateConfig?> config;

  /// The time that this resource was created on the server.
  /// This is in RFC3339 text format.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The resource name of the issuing CertificateAuthority in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  late final pulumi.Output<String> issuerCertificateAuthority;

  /// Labels with user-defined metadata to apply to this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The desired lifetime of the CA certificate. Used to create the "notBeforeTime" and
  /// "notAfterTime" fields inside an X.509 certificate. A duration in seconds with up to nine
  /// fractional digits, terminated by 's'. Example: "3.5s".
  late final pulumi.Output<String?> lifetime;

  /// Location of the Certificate. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  late final pulumi.Output<String> location;

  /// The name for this Certificate.
  late final pulumi.Output<String> name;

  /// Output only. The pem-encoded, signed X.509 certificate.
  late final pulumi.Output<String> pemCertificate;

  /// The chain that may be used to verify the X.509 certificate. Expected to be in issuer-to-root order according to RFC 5246.
  late final pulumi.Output<List<String>> pemCertificateChains;

  /// Immutable. A pem-encoded X.509 certificate signing request (CSR).
  late final pulumi.Output<String?> pemCsr;

  /// The name of the CaPool this Certificate belongs to.
  late final pulumi.Output<String> pool;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. Details regarding the revocation of this Certificate. This Certificate is
  /// considered revoked if and only if this field is present.
  /// Structure is documented below.
  late final pulumi.Output<List<CertificateRevocationDetail>> revocationDetails;

  /// Output only. The time at which this CertificateAuthority was updated.
  /// This is in RFC3339 text format.
  late final pulumi.Output<String> updateTime;

  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateAuthority = registerOutput<String?>('certificateAuthority');
    this.certificateDescriptions =
        registerOutput<List<CertificateCertificateDescription>>(
            'certificateDescriptions');
    this.certificateTemplate = registerOutput<String?>('certificateTemplate');
    this.config = registerOutput<CertificateConfig?>('config');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.issuerCertificateAuthority =
        registerOutput<String>('issuerCertificateAuthority');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lifetime = registerOutput<String?>('lifetime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.pemCertificate = registerOutput<String>('pemCertificate');
    this.pemCertificateChains =
        registerOutput<List<String>>('pemCertificateChains');
    this.pemCsr = registerOutput<String?>('pemCsr');
    this.pool = registerOutput<String>('pool');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.revocationDetails =
        registerOutput<List<CertificateRevocationDetail>>('revocationDetails');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
