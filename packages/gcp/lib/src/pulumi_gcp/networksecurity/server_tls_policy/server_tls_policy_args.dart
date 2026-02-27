// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../server_tls_policy_mtls_policy/server_tls_policy_mtls_policy.dart';
import '../server_tls_policy_server_certificate/server_tls_policy_server_certificate.dart';

/// The set of arguments for ServerTlsPolicy.
class ServerTlsPolicyArgs {
  /// This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies.
  /// Determines if server allows plaintext connections. If set to true, server allows plain text connections. By default, it is set to false. This setting is not exclusive of other encryption modes. For example, if allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections. See documentation of other encryption modes to confirm compatibility.
  /// Consider using it if you wish to upgrade in place your deployment to TLS while having mixed TLS and non-TLS traffic reaching port :80.
  final pulumi.Input<bool>? allowOpen;

  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;

  /// Set of label tags associated with the ServerTlsPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the server tls policy.
  /// The default value is `global`.
  final pulumi.Input<String>? location;

  /// This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director.
  /// Defines a mechanism to provision peer validation certificates for peer to peer authentication (Mutual TLS - mTLS). If not specified, client certificate will not be requested. The connection is treated as TLS and not mTLS. If allowOpen and mtlsPolicy are set, server allows both plain text and mTLS connections.
  /// Structure is documented below.
  final pulumi.Input<ServerTlsPolicyMtlsPolicy>? mtlsPolicy;

  /// Name of the ServerTlsPolicy resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  /// Structure is documented below.
  final pulumi.Input<ServerTlsPolicyServerCertificate>? serverCertificate;

  ServerTlsPolicyArgs({
    this.allowOpen,
    this.description,
    this.labels,
    this.location,
    this.mtlsPolicy,
    this.name,
    this.project,
    this.serverCertificate,
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
          ServerTlsPolicyMtlsPolicy,
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
              ServerTlsPolicyServerCertificate, Map<String, dynamic>>(
          serverCertificateValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServerTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerTlsPolicyArgs(
      allowOpen: pulumi.Input.asOptionalInput<bool>(map['allowOpen']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      mtlsPolicy: pulumi.Input.asOptionalInput<ServerTlsPolicyMtlsPolicy>(
          map['mtlsPolicy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serverCertificate:
          pulumi.Input.asOptionalInput<ServerTlsPolicyServerCertificate>(
              map['serverCertificate']),
    );
  }
}
