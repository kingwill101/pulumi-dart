// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_networksecurity_v1beta1_certificate_provider.dart';
import 'mtlspolicy_networksecurity_v1beta1.dart';

/// The set of arguments for ServerTlsPolicy.
class ServerTlsPolicyNetworksecurityV1beta1Args {
  /// This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies. Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility. Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  final pulumi.Input<bool>? allowOpen;

  /// Free-text description of the resource.
  final pulumi.Input<String>? description;

  /// Set of label tags associated with the resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director. Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections.
  final pulumi.Input<MTLSPolicyNetworksecurityV1beta1>? mtlsPolicy;

  /// Name of the ServerTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/serverTlsPolicies/{server_tls_policy}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty. Defines a mechanism to provision server identity (public and private keys). Cannot be combined with `allow_open` as a permissive mode that allows both plain text and TLS is not supported.
  final pulumi.Input<GoogleCloudNetworksecurityV1beta1CertificateProvider>?
      serverCertificate;

  /// Required. Short name of the ServerTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "server_mtls_policy".
  final pulumi.Input<String> serverTlsPolicyId;

  ServerTlsPolicyNetworksecurityV1beta1Args({
    this.allowOpen,
    this.description,
    this.labels,
    this.location,
    this.mtlsPolicy,
    this.name,
    this.project,
    this.serverCertificate,
    required this.serverTlsPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowOpenValue = allowOpen;
    if (allowOpenValue != null) {
      map['allowOpen'] = allowOpenValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final mtlsPolicyValue = mtlsPolicy;
    if (mtlsPolicyValue != null) {
      map['mtlsPolicy'] = pulumi.Input.mapOptionalInputValue<
          MTLSPolicyNetworksecurityV1beta1,
          Map<String, dynamic>>(mtlsPolicyValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serverCertificateValue = serverCertificate;
    if (serverCertificateValue != null) {
      map['serverCertificate'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudNetworksecurityV1beta1CertificateProvider,
              Map<String, dynamic>>(
          serverCertificateValue, (value) => value.toMap());
    }
    map['serverTlsPolicyId'] = serverTlsPolicyId;
    return map;
  }

  factory ServerTlsPolicyNetworksecurityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return ServerTlsPolicyNetworksecurityV1beta1Args(
      allowOpen: pulumi.Input.asOptionalInput<bool>(map['allowOpen']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      mtlsPolicy:
          pulumi.Input.asOptionalInput<MTLSPolicyNetworksecurityV1beta1>(
              map['mtlsPolicy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serverCertificate: pulumi.Input.asOptionalInput<
              GoogleCloudNetworksecurityV1beta1CertificateProvider>(
          map['serverCertificate']),
      serverTlsPolicyId: pulumi.Input.asInput<String>(map['serverTlsPolicyId']),
    );
  }
}
