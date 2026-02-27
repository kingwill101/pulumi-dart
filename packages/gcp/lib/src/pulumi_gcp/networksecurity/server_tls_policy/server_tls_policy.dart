import 'package:pulumi/pulumi.dart' as pulumi;
import '../server_tls_policy_mtls_policy/server_tls_policy_mtls_policy.dart';
import '../server_tls_policy_server_certificate/server_tls_policy_server_certificate.dart';
import 'server_tls_policy_args.dart';

/// ServerTlsPolicy is a resource that specifies how a server should authenticate incoming requests. This resource itself does not affect configuration unless it is attached to a target HTTPS proxy or endpoint config selector resource.
///
///
/// To get more information about ServerTlsPolicy, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-security/rest/v1beta1/projects.locations.serverTlsPolicies)
/// * How-to Guides
/// * [Use ServerTlsPolicy](https://cloud.google.com/load-balancing/docs/mtls)
///
/// ## Example Usage
///
/// ### Network Security Server Tls Policy Basic
///
///
///
/// ### Network Security Server Tls Policy Advanced
///
///
///
/// ### Network Security Server Tls Policy Server Cert
///
///
///
/// ### Network Security Server Tls Policy Mtls
///
///
///
///
/// ## Import
///
/// ServerTlsPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/serverTlsPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ServerTlsPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/serverTlsPolicy:ServerTlsPolicy default projects/{{project}}/locations/{{location}}/serverTlsPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/serverTlsPolicy:ServerTlsPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networksecurity/serverTlsPolicy:ServerTlsPolicy default {{location}}/{{name}}
/// ```
class ServerTlsPolicy extends pulumi.CustomResource {
  /// This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies.
  /// Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility.
  /// Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  late final pulumi.Output<bool?> allowOpen;

  /// Time the ServerTlsPolicy was created in UTC.
  late final pulumi.Output<String> createTime;

  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Set of label tags associated with the ServerTlsPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the server tls policy.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;

  /// This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director.
  /// Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections.
  /// Structure is documented below.
  late final pulumi.Output<ServerTlsPolicyMtlsPolicy?> mtlsPolicy;

  /// Name of the ServerTlsPolicy resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// Structure is documented below.
  late final pulumi.Output<ServerTlsPolicyServerCertificate?> serverCertificate;

  /// Time the ServerTlsPolicy was updated in UTC.
  late final pulumi.Output<String> updateTime;

  ServerTlsPolicy(
    String name, {
    ServerTlsPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/serverTlsPolicy:ServerTlsPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowOpen = registerOutput<bool?>('allowOpen');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.mtlsPolicy = registerOutput<ServerTlsPolicyMtlsPolicy?>('mtlsPolicy');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serverCertificate =
        registerOutput<ServerTlsPolicyServerCertificate?>('serverCertificate');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
