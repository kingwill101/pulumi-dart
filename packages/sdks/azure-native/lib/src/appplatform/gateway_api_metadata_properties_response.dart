// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API metadata property for Spring Cloud Gateway
class GatewayApiMetadataPropertiesResponse {
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

  /// Creates a new [GatewayApiMetadataPropertiesResponse].
  /// [description] Detailed description of the APIs available on the Gateway instance (default: `Generated OpenAPI 3 document that describes the API routes configured.`)
  /// [documentation] Location of additional documentation for the APIs available on the Gateway instance
  /// [serverUrl] Base URL that API consumers will use to access APIs on the Gateway instance.
  /// [title] Title describing the context of the APIs available on the Gateway instance (default: `Spring Cloud Gateway for K8S`)
  /// [version] Version of APIs available on this Gateway instance (default: `unspecified`).
  GatewayApiMetadataPropertiesResponse({
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

  factory GatewayApiMetadataPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GatewayApiMetadataPropertiesResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentation: (() { final guardedValue = map['documentation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverUrl: (() { final guardedValue = map['serverUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

