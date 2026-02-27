import 'package:pulumi/pulumi.dart' hide Config;
import 'client_tls_policy_args2.dart';
import 'google_cloud_networksecurity_v1beta1_certificate_provider_response.dart';
import 'validation_caresponse2.dart';

/// Creates a new ClientTlsPolicy in a given project and location.
class ClientTlsPolicy2 extends CustomResource {
  /// Optional. Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  late final Output<
          GoogleCloudNetworksecurityV1beta1CertificateProviderResponse>
      clientCertificate;

  /// Required. Short name of the ClientTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "client_mtls_policy".
  late final Output<String> clientTlsPolicyId;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Optional. Free-text description of the resource.
  late final Output<String> description;

  /// Optional. Set of label tags associated with the resource.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Name of the ClientTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/clientTlsPolicies/{client_tls_policy}`
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the server certificate. If empty, client does not validate the server certificate.
  late final Output<List<ValidationCAResponse2>> serverValidationCa;

  /// Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secure.example.com".
  late final Output<String> sni;

  /// The timestamp when the resource was updated.
  late final Output<String> updateTime;

  ClientTlsPolicy2(
    String name, {
    ClientTlsPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networksecurity/v1beta1:ClientTlsPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clientCertificate = registerOutput<
            GoogleCloudNetworksecurityV1beta1CertificateProviderResponse>(
        'clientCertificate');
    this.clientTlsPolicyId = registerOutput<String>('clientTlsPolicyId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serverValidationCa =
        registerOutput<List<ValidationCAResponse2>>('serverValidationCa');
    this.sni = registerOutput<String>('sni');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
