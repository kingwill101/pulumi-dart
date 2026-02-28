import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_tls_policy_networksecurity_v1beta1_args.dart';
import 'google_cloud_networksecurity_v1beta1_certificate_provider_response.dart';
import 'validation_caresponse_networksecurity_v1beta1.dart';

/// Creates a new ClientTlsPolicy in a given project and location.
class ClientTlsPolicyNetworksecurityV1beta1 extends pulumi.CustomResource {
  /// Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  late final pulumi.Output<GoogleCloudNetworksecurityV1beta1CertificateProviderResponse> clientCertificate;
  /// Required. Short name of the ClientTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "client_mtls_policy".
  late final pulumi.Output<String> clientTlsPolicyId;
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Optional. Free-text description of the resource.
  late final pulumi.Output<String> description;
  /// Optional. Set of label tags associated with the resource.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  late final pulumi.Output<List<ValidationCAResponseNetworksecurityV1beta1>> serverValidationCa;
  /// Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  late final pulumi.Output<String> sni;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ClientTlsPolicyNetworksecurityV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClientTlsPolicyNetworksecurityV1beta1]. {@macro pulumi_networksecurity_v1beta1_client_tls_policy_networksecurity_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClientTlsPolicyNetworksecurityV1beta1(
    String name, {
    ClientTlsPolicyNetworksecurityV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:ClientTlsPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientCertificate = registerOutput<GoogleCloudNetworksecurityV1beta1CertificateProviderResponse>('clientCertificate');
    this.clientTlsPolicyId = registerOutput<String>('clientTlsPolicyId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serverValidationCa = registerOutput<List<ValidationCAResponseNetworksecurityV1beta1>>('serverValidationCa');
    this.sni = registerOutput<String>('sni');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
