import 'package:pulumi/pulumi.dart';
import '../certificate_issuance_config_certificate_authority_config/certificate_issuance_config_certificate_authority_config.dart';
import 'certificate_issuance_config_args.dart';

/// Certificate represents a HTTP-reachable backend for a Certificate.
///
///
/// To get more information about CertificateIssuanceConfig, see:
///
/// * [API documentation](https://cloud.google.com/certificate-manager/docs/reference/certificate-manager/rest/v1/projects.locations.certificateIssuanceConfigs)
/// * How-to Guides
/// * [Manage certificate issuance configs](https://cloud.google.com/certificate-manager/docs/issuance-configs)
///
/// ## Example Usage
///
/// ### Certificate Manager Certificate Issuance Config
///
///
///
///
/// ## Import
///
/// CertificateIssuanceConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/certificateIssuanceConfigs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, CertificateIssuanceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateIssuanceConfig:CertificateIssuanceConfig default projects/{{project}}/locations/{{location}}/certificateIssuanceConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateIssuanceConfig:CertificateIssuanceConfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/certificateIssuanceConfig:CertificateIssuanceConfig default {{location}}/{{name}}
/// ```
class CertificateIssuanceConfig extends CustomResource {
  /// The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.
  /// Structure is documented below.
  late final Output<CertificateIssuanceConfigCertificateAuthorityConfig>
      certificateAuthorityConfig;

  /// The creation timestamp of a CertificateIssuanceConfig. Timestamp is in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds with up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// One or more paragraphs of text description of a CertificateIssuanceConfig.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Key algorithm to use when generating the private key.
  /// Possible values are: `RSA_2048`, `ECDSA_P256`.
  late final Output<String> keyAlgorithm;

  /// 'Set of label tags associated with the CertificateIssuanceConfig resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Lifetime of issued certificates. A duration in seconds with up to nine fractional digits, ending with 's'.
  /// Example: "1814400s". Valid values are from 21 days (1814400s) to 30 days (2592000s)
  late final Output<String> lifetime;

  /// The Certificate Manager location. If not specified, "global" is used.
  late final Output<String?> location;

  /// A user-defined name of the certificate issuance config.
  /// CertificateIssuanceConfig names must be unique globally.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// It specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate.
  /// Must be a number between 1-99, inclusive.
  /// You must set the rotation window percentage in relation to the certificate lifetime so that certificate renewal occurs at least 7 days after
  /// the certificate has been issued and at least 7 days before it expires.
  late final Output<int> rotationWindowPercentage;

  /// The last update timestamp of a CertificateIssuanceConfig. Timestamp is in RFC3339 UTC "Zulu" format,
  /// accurate to nanoseconds with up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  CertificateIssuanceConfig(
    String name, {
    CertificateIssuanceConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/certificateIssuanceConfig:CertificateIssuanceConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateAuthorityConfig =
        registerOutput<CertificateIssuanceConfigCertificateAuthorityConfig>(
            'certificateAuthorityConfig');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.keyAlgorithm = registerOutput<String>('keyAlgorithm');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lifetime = registerOutput<String>('lifetime');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rotationWindowPercentage =
        registerOutput<int>('rotationWindowPercentage');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
