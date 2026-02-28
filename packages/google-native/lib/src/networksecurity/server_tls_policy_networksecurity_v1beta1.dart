import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_networksecurity_v1beta1_certificate_provider_response.dart';
import 'mtlspolicy_response_networksecurity_v1beta1.dart';
import 'server_tls_policy_networksecurity_v1beta1_args.dart';

/// Creates a new ServerTlsPolicy in a given project and location.
class ServerTlsPolicyNetworksecurityV1beta1 extends pulumi.CustomResource {
  /// This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies. Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility. Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  late final pulumi.Output<bool> allowOpen;

  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Free-text description of the resource.
  late final pulumi.Output<String> description;

  /// Set of label tags associated with the resource.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director. Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections.
  late final pulumi.Output<MTLSPolicyResponseNetworksecurityV1beta1> mtlsPolicy;

  /// Name of the ServerTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/serverTlsPolicies/{server_tls_policy}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty. Defines a mechanism to provision server identity (public and private keys). Cannot be combined with `allow_open` as a permissive mode that allows both plain text and TLS is not supported.
  late final pulumi
      .Output<GoogleCloudNetworksecurityV1beta1CertificateProviderResponse>
      serverCertificate;

  /// Required. Short name of the ServerTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "server_mtls_policy".
  late final pulumi.Output<String> serverTlsPolicyId;

  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ServerTlsPolicyNetworksecurityV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerTlsPolicyNetworksecurityV1beta1]. {@macro pulumi_networksecurity_v1beta1_server_tls_policy_networksecurity_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerTlsPolicyNetworksecurityV1beta1(
    String name, {
    ServerTlsPolicyNetworksecurityV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:ServerTlsPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowOpen = registerOutput<bool>('allowOpen');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.mtlsPolicy =
        registerOutput<MTLSPolicyResponseNetworksecurityV1beta1>('mtlsPolicy');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serverCertificate = registerOutput<
            GoogleCloudNetworksecurityV1beta1CertificateProviderResponse>(
        'serverCertificate');
    this.serverTlsPolicyId = registerOutput<String>('serverTlsPolicyId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
