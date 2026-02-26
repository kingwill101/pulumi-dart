// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BackendAuthenticationConfig.
class BackendAuthenticationConfigArgs {
  /// Reference to a Certificate resource from the certificatemanager.googleapis.com namespace.
  /// Used by a BackendService to negotiate mTLS when the backend connection uses TLS and the backend requests a client certificate. Must have a CLIENT_AUTH scope.
  final Input<String>? clientCertificate;

  /// A free-text description of the resource. Max length 1024 characters.
  final Input<String>? description;

  /// Set of label tags associated with the BackendAuthenticationConfig resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the backend authentication config.
  /// The default value is <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  final Input<String>? location;

  /// Name of the BackendAuthenticationConfig resource.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Reference to a TrustConfig resource from the certificatemanager.googleapis.com namespace.
  /// A BackendService uses the chain of trust represented by this TrustConfig, if specified, to validate the server certificates presented by the backend. Required unless wellKnownRoots is set to PUBLIC_ROOTS.
  final Input<String>? trustConfig;

  /// Well known roots to use for server certificate validation. If set to NONE, the BackendService will only validate server certificates against roots specified in TrustConfig.
  /// If set to PUBLIC_ROOTS, the BackendService uses a set of well-known public roots, in addition to any roots specified in the trustConfig field, when validating the server certificates presented by the backend.
  /// Validation with these roots is only considered when the TlsSettings.sni field in the BackendService is set. The well-known roots are a set of root CAs managed by Google. CAs in this set can be added or removed without notice.
  /// Possible values are: `NONE`, `PUBLIC_ROOTS`.
  final Input<String>? wellKnownRoots;

  BackendAuthenticationConfigArgs({
    this.clientCertificate,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.trustConfig,
    this.wellKnownRoots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientCertificateValue = clientCertificate;
    if (clientCertificateValue != null) {
      map['clientCertificate'] = clientCertificateValue;
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
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final trustConfigValue = trustConfig;
    if (trustConfigValue != null) {
      map['trustConfig'] = trustConfigValue;
    }
    final wellKnownRootsValue = wellKnownRoots;
    if (wellKnownRootsValue != null) {
      map['wellKnownRoots'] = wellKnownRootsValue;
    }
    return map;
  }

  factory BackendAuthenticationConfigArgs.fromMap(Map<String, dynamic> map) {
    return BackendAuthenticationConfigArgs(
      clientCertificate:
          Input.asOptionalInput<String>(map['clientCertificate']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      trustConfig: Input.asOptionalInput<String>(map['trustConfig']),
      wellKnownRoots: Input.asOptionalInput<String>(map['wellKnownRoots']),
    );
  }
}
