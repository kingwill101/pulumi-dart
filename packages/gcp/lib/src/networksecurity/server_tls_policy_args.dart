// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_tls_policy_mtls_policy.dart';
import 'server_tls_policy_server_certificate.dart';

/// {@template pulumi_networksecurity_server_tls_policy_server_tls_policy_args_doc}
/// The set of arguments for ServerTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_server_tls_policy_server_tls_policy_args_doc}
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

  /// Creates a new [ServerTlsPolicyArgs].
  /// [allowOpen] This field applies only for Traffic Director policies. It is must be set to false for external HTTPS load balancer policies.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [labels] Set of label tags associated with the ServerTlsPolicy resource.
  /// [location] The location of the server tls policy.
  /// [mtlsPolicy] This field is required if the policy is used with external HTTPS load balancers. This field can be empty for Traffic Director.
  /// [name] Name of the ServerTlsPolicy resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [serverCertificate] Defines a mechanism to provision client identity (public and private keys) for peer to peer authentication. The presence of this dictates mTLS.
  ServerTlsPolicyArgs({
    bool? allowOpen,
    String? description,
    Map<String, String>? labels,
    String? location,
    ServerTlsPolicyMtlsPolicy? mtlsPolicy,
    String? name,
    String? project,
    ServerTlsPolicyServerCertificate? serverCertificate,
  }) : allowOpen = pulumi.Input.asOptionalInput<bool>(allowOpen),
       description = pulumi.Input.asOptionalInput<String>(description),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       mtlsPolicy = pulumi.Input.asOptionalInput<ServerTlsPolicyMtlsPolicy>(
         mtlsPolicy,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       serverCertificate =
           pulumi.Input.asOptionalInput<ServerTlsPolicyServerCertificate>(
             serverCertificate,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowOpen': ?allowOpen,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'mtlsPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ServerTlsPolicyMtlsPolicy,
            Map<String, dynamic>
          >(mtlsPolicy, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'serverCertificate':
          ?pulumi.Input.mapOptionalInputValue<
            ServerTlsPolicyServerCertificate,
            Map<String, dynamic>
          >(serverCertificate, (value) => value.toMap()),
    };
  }

  factory ServerTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServerTlsPolicyArgs(
      allowOpen: map['allowOpen'] == null ? null : map['allowOpen'] as bool,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      mtlsPolicy: map['mtlsPolicy'] == null
          ? null
          : ServerTlsPolicyMtlsPolicy.fromMap(
              (map['mtlsPolicy'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serverCertificate: map['serverCertificate'] == null
          ? null
          : ServerTlsPolicyServerCertificate.fromMap(
              (map['serverCertificate'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
