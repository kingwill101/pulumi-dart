import 'package:pulumi/pulumi.dart';
import '../trust_config_allowlisted_certificate/trust_config_allowlisted_certificate.dart';
import '../trust_config_trust_store/trust_config_trust_store.dart';
import 'trust_config_args.dart';

/// TrustConfig represents a resource that represents your Public Key Infrastructure (PKI) configuration in Certificate Manager for use in mutual TLS authentication scenarios.
///
///
/// To get more information about TrustConfig, see:
///
/// * [API documentation](https://cloud.google.com/certificate-manager/docs/reference/certificate-manager/rest/v1/projects.locations.trustConfigs/create)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/certificate-manager/docs)
///
///
///
/// ## Example Usage
///
/// ### Certificate Manager Trust Config
///
///
///
/// ### Certificate Manager Trust Config Allowlisted Certificates
///
///
///
///
/// ## Import
///
/// TrustConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/trustConfigs/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, TrustConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/trustConfig:TrustConfig default projects/{{project}}/locations/{{location}}/trustConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/trustConfig:TrustConfig default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificatemanager/trustConfig:TrustConfig default {{location}}/{{name}}
/// ```
class TrustConfig extends CustomResource {
  /// Allowlisted PEM-encoded certificates. A certificate matching an allowlisted certificate is always considered valid as long as
  /// the certificate is parseable, proof of private key possession is established, and constraints on the certificate's SAN field are met.
  /// Structure is documented below.
  late final Output<List<TrustConfigAllowlistedCertificate>?>
      allowlistedCertificates;

  /// The creation timestamp of a TrustConfig.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// One or more paragraphs of text description of a trust config.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the trust config.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The trust config location.
  late final Output<String> location;

  /// A user-defined name of the trust config. Trust config names must be unique globally.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Set of trust stores to perform validation against.
  /// This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation.
  /// Structure is documented below.
  late final Output<List<TrustConfigTrustStore>?> trustStores;

  /// The last update timestamp of a TrustConfig.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  TrustConfig(
    String name, {
    TrustConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:certificatemanager/trustConfig:TrustConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowlistedCertificates =
        registerOutput<List<TrustConfigAllowlistedCertificate>?>(
            'allowlistedCertificates');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.trustStores =
        registerOutput<List<TrustConfigTrustStore>?>('trustStores');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
