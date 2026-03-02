// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API metadata property for Spring Cloud Gateway
class GatewayApiMetadataProperties {
  /// Detailed description of the APIs available on the Gateway instance (default: `Generated OpenAPI 3 document that describes the API routes configured.`)
  final pulumi.Input<String>? description;
  /// Location of additional documentation for the APIs available on the Gateway instance
  final pulumi.Input<String>? documentation;
  /// Base URL that API consumers will use to access APIs on the Gateway instance.
  final pulumi.Input<String>? serverUrl;
  /// Title describing the context of the APIs available on the Gateway instance (default: `Spring Cloud Gateway for K8S`)
  final pulumi.Input<String>? title;
  /// Version of APIs available on this Gateway instance (default: `unspecified`).
  final pulumi.Input<String>? version;

  /// Creates a new [GatewayApiMetadataProperties].
  /// [description] Detailed description of the APIs available on the Gateway instance (default: `Generated OpenAPI 3 document that describes the API routes configured.`)
  /// [documentation] Location of additional documentation for the APIs available on the Gateway instance
  /// [serverUrl] Base URL that API consumers will use to access APIs on the Gateway instance.
  /// [title] Title describing the context of the APIs available on the Gateway instance (default: `Spring Cloud Gateway for K8S`)
  /// [version] Version of APIs available on this Gateway instance (default: `unspecified`).
  GatewayApiMetadataProperties({
    this.description,
    this.documentation,
    this.serverUrl,
    this.title,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'documentation': ?documentation,
      'serverUrl': ?serverUrl,
      'title': ?title,
      'version': ?version,
    };
  }

  factory GatewayApiMetadataProperties.fromMap(Map<String, dynamic> map) {
    return GatewayApiMetadataProperties(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      documentation: map['documentation'] == null ? null : (map['documentation']! as String).input(),
      serverUrl: map['serverUrl'] == null ? null : (map['serverUrl']! as String).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

