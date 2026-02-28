// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_backend_authentication_config_backend_authentication_config_args_doc}
/// The set of arguments for BackendAuthenticationConfig.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_backend_authentication_config_backend_authentication_config_args_doc}
class BackendAuthenticationConfigArgs {
  /// Reference to a Certificate resource from the certificatemanager.googleapis.com namespace.
  /// Used by a BackendService to negotiate mTLS when the backend connection uses TLS and the backend requests a client certificate. Must have a CLIENT_AUTH scope.
  final pulumi.Input<String>? clientCertificate;
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// Set of label tags associated with the BackendAuthenticationConfig resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the backend authentication config.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// Name of the BackendAuthenticationConfig resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Reference to a TrustConfig resource from the certificatemanager.googleapis.com namespace.
  /// A BackendService uses the chain of trust represented by this TrustConfig, if specified, to validate the server certificates presented by the backend. Required unless wellKnownRoots is set to PUBLIC_ROOTS.
  final pulumi.Input<String>? trustConfig;
  /// Well known roots to use for server certificate validation. If set to NONE, the BackendService will only validate server certificates against roots specified in TrustConfig.
  /// If set to PUBLIC_ROOTS, the BackendService uses a set of well-known public roots, in addition to any roots specified in the trustConfig field, when validating the server certificates presented by the backend.
  /// Validation with these roots is only considered when the TlsSettings.sni field in the BackendService is set. The well-known roots are a set of root CAs managed by Google. CAs in this set can be added or removed without notice.
  /// Possible values are: `NONE`, `PUBLIC_ROOTS`.
  final pulumi.Input<String>? wellKnownRoots;

  /// Creates a new [BackendAuthenticationConfigArgs].
  /// [clientCertificate] Reference to a Certificate resource from the certificatemanager.googleapis.com namespace.
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [labels] Set of label tags associated with the BackendAuthenticationConfig resource.
  /// [location] The location of the backend authentication config.
  /// [name] Name of the BackendAuthenticationConfig resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [trustConfig] Reference to a TrustConfig resource from the certificatemanager.googleapis.com namespace.
  /// [wellKnownRoots] Well known roots to use for server certificate validation. If set to NONE, the BackendService will only validate server certificates against roots specified in TrustConfig.
  BackendAuthenticationConfigArgs({
    String? clientCertificate,
    String? description,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? project,
    String? trustConfig,
    String? wellKnownRoots,
  }) :
      clientCertificate = pulumi.Input.asOptionalInput<String>(clientCertificate),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      trustConfig = pulumi.Input.asOptionalInput<String>(trustConfig),
      wellKnownRoots = pulumi.Input.asOptionalInput<String>(wellKnownRoots);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificate': ?clientCertificate,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'trustConfig': ?trustConfig,
      'wellKnownRoots': ?wellKnownRoots,
    };
  }

  factory BackendAuthenticationConfigArgs.fromMap(Map<String, dynamic> map) {
    return BackendAuthenticationConfigArgs(
      clientCertificate: map['clientCertificate'] == null ? null : map['clientCertificate'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      trustConfig: map['trustConfig'] == null ? null : map['trustConfig'] as String,
      wellKnownRoots: map['wellKnownRoots'] == null ? null : map['wellKnownRoots'] as String,
    );
  }
}

