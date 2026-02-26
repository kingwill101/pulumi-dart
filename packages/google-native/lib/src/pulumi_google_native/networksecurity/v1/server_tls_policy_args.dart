// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_networksecurity_v1_certificate_provider.dart';
import 'mtlspolicy.dart';

/// The set of arguments for ServerTlsPolicy.
class ServerTlsPolicyArgs {
  /// This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies. Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility. Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  final Input<bool>? allowOpen;

  /// Free-text description of the resource.
  final Input<String>? description;

  /// Set of label tags associated with the resource.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director. Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If `allow_open` and `mtls_policy` are set, server allows both plain text and mTLS connections.
  final Input<MTLSPolicy>? mtlsPolicy;

  /// Name of the ServerTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/serverTlsPolicies/{server_tls_policy}`
  final Input<String>? name;
  final Input<String>? project;

  /// Optional if policy is to be used with Traffic Director. For external HTTPS load balancer must be empty. Defines a mechanism to provision server identity (public and private keys). Cannot be combined with `allow_open` as a permissive mode that allows both plain text and TLS is not supported.
  final Input<GoogleCloudNetworksecurityV1CertificateProvider>?
      serverCertificate;

  /// Required. Short name of the ServerTlsPolicy resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "server_mtls_policy".
  final Input<String> serverTlsPolicyId;

  ServerTlsPolicyArgs({
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
      map['mtlsPolicy'] =
          Input.mapOptionalInputValue<MTLSPolicy, Map<String, dynamic>>(
              mtlsPolicyValue, (value) => value.toMap());
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
      map['serverCertificate'] = Input.mapOptionalInputValue<
              GoogleCloudNetworksecurityV1CertificateProvider,
              Map<String, dynamic>>(
          serverCertificateValue, (value) => value.toMap());
    }
    map['serverTlsPolicyId'] = serverTlsPolicyId;
    return map;
  }

  factory ServerTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerTlsPolicyArgs(
      allowOpen: Input.asOptionalInput<bool>(map['allowOpen']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      mtlsPolicy: Input.asOptionalInput<MTLSPolicy>(map['mtlsPolicy']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serverCertificate: Input.asOptionalInput<
              GoogleCloudNetworksecurityV1CertificateProvider>(
          map['serverCertificate']),
      serverTlsPolicyId: Input.asInput<String>(map['serverTlsPolicyId']),
    );
  }
}
