// ignore_for_file: unused_element, unnecessary_cast


class EndpointDeploymentModel {
  /// Model format
  final String? format;
  /// Model name.
  final String? name;
  /// Optional. Deployment model source ARM resource ID.
  final String? source;
  /// Model version.
  final String? version;

  /// Creates a new [EndpointDeploymentModel].
  /// [format] Model format
  /// [name] Model name.
  /// [source] Optional. Deployment model source ARM resource ID.
  /// [version] Model version.
  EndpointDeploymentModel({
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

  factory EndpointDeploymentModel.fromMap(Map<String, dynamic> map) {
    return EndpointDeploymentModel(
      format: map['format'] == null ? null : map['format'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

