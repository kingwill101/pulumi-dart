// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_networksecurity_v1_certificate_provider_response.dart';
import 'mtlspolicy_response.dart';

/// Result data returned by getServerTlsPolicy.
class GetServerTlsPolicyResult {
  /// This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies. Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility. Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  final bool allowOpen;

  /// The timestamp when the resource was created.
  final String createTime;

  /// Free-text description of the resource.
  final String description;

  /// Set of label tags associated with the resource.
  final Map<String, String> labels;

  /// This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director. Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections.
  final MTLSPolicyResponse mtlsPolicy;

  /// Name of the ServerTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/serverTlsPolicies/{server_tls_policy}`
  final String name;

  /// Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty. Defines a mechanism to provision server identity (public and private keys). Cannot be combined with `allow_open` as a permissive mode that allows both plain text and TLS is not supported.
  final GoogleCloudNetworksecurityV1CertificateProviderResponse
      serverCertificate;

  /// The timestamp when the resource was updated.
  final String updateTime;

  /// Creates a new [GetServerTlsPolicyResult].
  /// [allowOpen] This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies. Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility. Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  /// [createTime] The timestamp when the resource was created.
  /// [description] Free-text description of the resource.
  /// [labels] Set of label tags associated with the resource.
  /// [mtlsPolicy] This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director. Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections.
  /// [name] Name of the ServerTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/serverTlsPolicies/{server_tls_policy}`
  /// [serverCertificate] Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty. Defines a mechanism to provision server identity (public and private keys). Cannot be combined with `allow_open` as a permissive mode that allows both plain text and TLS is not supported.
  /// [updateTime] The timestamp when the resource was updated.
  GetServerTlsPolicyResult({
    required this.allowOpen,
    required this.createTime,
    required this.description,
    required this.labels,
    required this.mtlsPolicy,
    required this.name,
    required this.serverCertificate,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowOpen'] = allowOpen;
    map['createTime'] = createTime;
    map['description'] = description;
    map['labels'] = labels;
    map['mtlsPolicy'] = mtlsPolicy.toMap();
    map['name'] = name;
    map['serverCertificate'] = serverCertificate.toMap();
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetServerTlsPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetServerTlsPolicyResult(
      allowOpen: map['allowOpen'] as bool,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      mtlsPolicy: MTLSPolicyResponse.fromMap(
          (map['mtlsPolicy'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      serverCertificate:
          GoogleCloudNetworksecurityV1CertificateProviderResponse.fromMap(
              (map['serverCertificate'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
