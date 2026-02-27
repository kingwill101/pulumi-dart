import 'package:pulumi/pulumi.dart';
import '../client_tls_policy_client_certificate/client_tls_policy_client_certificate.dart';
import '../client_tls_policy_server_validation_ca/client_tls_policy_server_validation_ca.dart';
import 'client_tls_policy_args.dart';

/// ClientTlsPolicy is a resource that specifies how a client should authenticate connections to backends of a service. This resource itself does not affect configuration unless it is attached to a backend service resource.
///
///
/// To get more information about ClientTlsPolicy, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-security/rest/v1beta1/projects.locations.clientTlsPolicies)
/// * How-to Guides
/// * [Service Security](https://cloud.google.com/traffic-director/docs/security-use-cases)
///
/// ## Example Usage
///
/// ### Network Security Client Tls Policy Basic
///
///
///
/// ### Network Security Client Tls Policy Advanced
///
///
///
///
/// ## Import
///
/// ClientTlsPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clientTlsPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ClientTlsPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/clientTlsPolicy:ClientTlsPolicy default projects/{{project}}/locations/{{location}}/clientTlsPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/clientTlsPolicy:ClientTlsPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/clientTlsPolicy:ClientTlsPolicy default {{location}}/{{name}}
/// ```
class ClientTlsPolicy extends CustomResource {
  /// Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// Structure is documented below.
  late final Output<ClientTlsPolicyClientCertificate?> clientCertificate;

  /// Time the ClientTlsPolicy was created in UTC.
  late final Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the ClientTlsPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the client tls policy.
  /// The default value is `global`.
  late final Output<String?> location;

  /// Name of the ClientTlsPolicy resource.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  /// Structure is documented below.
  late final Output<List<ClientTlsPolicyServerValidationCa>?>
      serverValidationCas;

  /// Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  late final Output<String?> sni;

  /// Time the ClientTlsPolicy was updated in UTC.
  late final Output<String> updateTime;

  ClientTlsPolicy(
    String name, {
    ClientTlsPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/clientTlsPolicy:ClientTlsPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clientCertificate =
        registerOutput<ClientTlsPolicyClientCertificate?>('clientCertificate');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serverValidationCas =
        registerOutput<List<ClientTlsPolicyServerValidationCa>?>(
            'serverValidationCas');
    this.sni = registerOutput<String?>('sni');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
