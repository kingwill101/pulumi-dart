import 'package:pulumi/pulumi.dart';
import '../certificate_template_identity_constraints/certificate_template_identity_constraints.dart';
import '../certificate_template_passthrough_extensions/certificate_template_passthrough_extensions.dart';
import '../certificate_template_predefined_values/certificate_template_predefined_values.dart';
import 'certificate_template_args.dart';

/// Certificate Authority Service provides reusable and parameterized templates that you can use for common certificate issuance scenarios. A certificate template represents a relatively static and well-defined certificate issuance schema within an organization. A certificate template can essentially become a full-fledged vertical certificate issuance framework.
///
///
/// To get more information about CertificateTemplate, see:
///
/// * [API documentation](https://cloud.google.com/certificate-authority-service/docs/reference/rest)
/// * How-to Guides
/// * [Common configurations and Certificate Profiles](https://cloud.google.com/certificate-authority-service/docs/certificate-profile)
/// * [Official Documentation](https://cloud.google.com/certificate-authority-service)
/// * [Understanding Certificate Templates](https://cloud.google.com/certificate-authority-service/docs/certificate-template)
///
/// ## Example Usage
///
/// ### Privateca Template Basic
///
///
///
/// ### Privateca Template Zero Max Issuer Path Length Null Ca
///
///
///
///
/// ## Import
///
/// CertificateTemplate can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/certificateTemplates/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, CertificateTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificateTemplate:CertificateTemplate default projects/{{project}}/locations/{{location}}/certificateTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificateTemplate:CertificateTemplate default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:certificateauthority/certificateTemplate:CertificateTemplate default {{location}}/{{name}}
/// ```
class CertificateTemplate extends CustomResource {
  /// Output only. The time at which this CertificateTemplate was created.
  late final Output<String> createTime;

  /// Optional. A human-readable description of scenarios this template is intended for.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Optional. Describes constraints on identities that may be appear in Certificates issued using this template. If this is omitted, then this template will not add restrictions on a certificate's identity.
  /// Structure is documented below.
  late final Output<CertificateTemplateIdentityConstraints?>
      identityConstraints;

  /// Optional. Labels with user-defined metadata.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location for the resource
  late final Output<String> location;

  /// Optional. The maximum lifetime allowed for all issued certificates that use this template. If the issuing CaPool's IssuancePolicy specifies a maximum lifetime the minimum of the two durations will be the maximum lifetime for issued. Note that if the issuing CertificateAuthority expires before a Certificate's requested maximum_lifetime, the effective lifetime will be explicitly truncated to match it.
  late final Output<String?> maximumLifetime;

  /// The resource name for this CertificateTemplate in the format `projects/*/locations/*/certificateTemplates/*`.
  late final Output<String> name;

  /// Optional. Describes the set of X.509 extensions that may appear in a Certificate issued using this CertificateTemplate. If a certificate request sets extensions that don't appear in the passthrough_extensions, those extensions will be dropped. If the issuing CaPool's IssuancePolicy defines baseline_values that don't appear here, the certificate issuance request will fail. If this is omitted, then this template will not add restrictions on a certificate's X.509 extensions. These constraints do not apply to X.509 extensions set in this CertificateTemplate's predefined_values.
  /// Structure is documented below.
  late final Output<CertificateTemplatePassthroughExtensions?>
      passthroughExtensions;

  /// Optional. A set of X.509 values that will be applied to all issued certificates that use this template. If the certificate request includes conflicting values for the same properties, they will be overwritten by the values defined here. If the issuing CaPool's IssuancePolicy defines conflicting baseline_values for the same properties, the certificate issuance request will fail.
  /// Structure is documented below.
  late final Output<CertificateTemplatePredefinedValues?> predefinedValues;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. The time at which this CertificateTemplate was updated.
  late final Output<String> updateTime;

  CertificateTemplate(
    String name, {
    CertificateTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:certificateauthority/certificateTemplate:CertificateTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.identityConstraints =
        registerOutput<CertificateTemplateIdentityConstraints?>(
            'identityConstraints');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.maximumLifetime = registerOutput<String?>('maximumLifetime');
    this.name = registerOutput<String>('name');
    this.passthroughExtensions =
        registerOutput<CertificateTemplatePassthroughExtensions?>(
            'passthroughExtensions');
    this.predefinedValues =
        registerOutput<CertificateTemplatePredefinedValues?>(
            'predefinedValues');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
