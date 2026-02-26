import 'package:pulumi/pulumi.dart';
import 'google_cloud_networksecurity_v1beta1_certificate_provider_response.dart';
import 'mtlspolicy_response2.dart';
import 'server_tls_policy_args2.dart';

/// Creates a new ServerTlsPolicy in a given project and location.
class ServerTlsPolicy2 extends CustomResource {
  /// This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies. Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility. Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  late final Output<bool> allowOpen;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Free-text description of the resource.
  late final Output<String> description;

  /// Set of label tags associated with the resource.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director. Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections.
  late final Output<MTLSPolicyResponse2> mtlsPolicy;

  /// Name of the ServerTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/serverTlsPolicies/{server_tls_policy}`
  late final Output<String> name;
  late final Output<String> project;

  /// Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty. Defines a mechanism to provision server identity (public and private keys). Cannot be combined with `allow_open` as a permissive mode that allows both plain text and TLS is not supported.
  late final Output<
          GoogleCloudNetworksecurityV1beta1CertificateProviderResponse>
      serverCertificate;

  /// Required. Short name of the ServerTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "server_mtls_policy".
  late final Output<String> serverTlsPolicyId;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  ServerTlsPolicy2(
    String name, {
    ServerTlsPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:ServerTlsPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowOpen = Output.createUnknown<bool>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.mtlsPolicy = Output.createUnknown<MTLSPolicyResponse2>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.serverCertificate = Output.createUnknown<
        GoogleCloudNetworksecurityV1beta1CertificateProviderResponse>();
    this.serverTlsPolicyId = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
