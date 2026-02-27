import 'package:pulumi/pulumi.dart';
import '../ca_pool_encryption_spec/ca_pool_encryption_spec.dart';
import '../ca_pool_issuance_policy/ca_pool_issuance_policy.dart';
import '../ca_pool_publishing_options/ca_pool_publishing_options.dart';
import 'ca_pool_args.dart';

/// A CaPool represents a group of CertificateAuthorities that form a trust anchor. A CaPool can be used to manage
/// issuance policies for one or more CertificateAuthority resources and to rotate CA certificates in and out of the
/// trust anchor.
///
///
/// To get more information about CaPool, see:
///
/// * [API documentation](https://cloud.google.com/certificate-authority-service/docs/reference/rest/v1/projects.locations.caPools)
/// * How-to Guides
/// * [Certificate Authority Service Overview](https://cloud.google.com/certificate-authority-service/docs/overview)
///
/// ## Example Usage
///
/// ### Privateca Capool Basic
///
///
///
/// ### Privateca Capool All Fields
///
///
///
///
/// ## Import
///
/// CaPool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/caPools/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, CaPool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/caPool:CaPool default projects/{{project}}/locations/{{location}}/caPools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/caPool:CaPool default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/caPool:CaPool default {{location}}/{{name}}
/// ```
class CaPool extends CustomResource {
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Used when customer would like to encrypt data at rest. The customer-provided key will be used
  /// to encrypt the Subject, SubjectAltNames and PEM-encoded certificate fields. When unspecified,
  /// customer data will remain unencrypted.
  /// Structure is documented below.
  late final Output<CaPoolEncryptionSpec?> encryptionSpec;

  /// The IssuancePolicy to control how Certificates will be issued from this CaPool.
  /// Structure is documented below.
  late final Output<CaPoolIssuancePolicy?> issuancePolicy;

  /// Labels with user-defined metadata.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass":
  /// "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Location of the CaPool. A full list of valid locations can be found by
  /// running `gcloud privateca locations list`.
  late final Output<String> location;

  /// The name for this CaPool.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  /// Structure is documented below.
  late final Output<CaPoolPublishingOptions?> publishingOptions;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The Tier of this CaPool.
  /// Possible values are: `ENTERPRISE`, `DEVOPS`.
  late final Output<String> tier;

  CaPool(
    String name, {
    CaPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/caPool:CaPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionSpec =
        registerOutput<CaPoolEncryptionSpec?>('encryptionSpec');
    this.issuancePolicy =
        registerOutput<CaPoolIssuancePolicy?>('issuancePolicy');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.publishingOptions =
        registerOutput<CaPoolPublishingOptions?>('publishingOptions');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.tier = registerOutput<String>('tier');
  }
}
