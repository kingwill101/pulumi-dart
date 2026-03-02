// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointDeploymentModelResponse {
  /// Model format
  final pulumi.Input<String>? format;
  /// Model name.
  final pulumi.Input<String>? name;
  /// Optional. Deployment model source ARM resource ID.
  final pulumi.Input<String>? source;
  /// Model version.
  final pulumi.Input<String>? version;

  /// Creates a new [EndpointDeploymentModelResponse].
  /// [format] Model format
  /// [name] Model name.
  /// [source] Optional. Deployment model source ARM resource ID.
  /// [version] Model version.
  EndpointDeploymentModelResponse({
    this.format,
    this.name,
    this.source,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'name': ?name,
      'source': ?source,
      'version': ?version,
    };
  }

  factory EndpointDeploymentModelResponse.fromMap(Map<String, dynamic> map) {
    return EndpointDeploymentModelResponse(
      format: map['format'] == null ? null : (map['format']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

