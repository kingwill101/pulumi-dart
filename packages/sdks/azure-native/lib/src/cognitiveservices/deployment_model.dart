// ignore_for_file: unused_element, unnecessary_cast


/// Properties of Cognitive Services account deployment model.
class DeploymentModel {
  /// Deployment model format.
  final String? format;
  /// Deployment model name.
  final String? name;
  /// Deployment model publisher.
  final String? publisher;
  /// Optional. Deployment model source ARM resource ID.
  final String? source;
  /// Optional. Source of the model, another Microsoft.CognitiveServices accounts ARM resource ID.
  final String? sourceAccount;
  /// Optional. Deployment model version. If version is not specified, a default version will be assigned. The default version is different for different models and might change when there is new version available for a model. Default version for a model could be found from list models API.
  final String? version;

  /// Creates a new [DeploymentModel].
  /// [format] Deployment model format.
  /// [name] Deployment model name.
  /// [publisher] Deployment model publisher.
  /// [source] Optional. Deployment model source ARM resource ID.
  /// [sourceAccount] Optional. Source of the model, another Microsoft.CognitiveServices accounts ARM resource ID.
  /// [version] Optional. Deployment model version. If version is not specified, a default version will be assigned. The default version is different for different models and might change when there is new version available for a model. Default version for a model could be found from list models API.
  DeploymentModel({
    this.format,
    this.name,
    this.publisher,
    this.source,
    this.sourceAccount,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format,
      'name': ?name,
      'publisher': ?publisher,
      'source': ?source,
      'sourceAccount': ?sourceAccount,
      'version': ?version,
    };
  }

  factory DeploymentModel.fromMap(Map<String, dynamic> map) {
    return DeploymentModel(
      format: map['format'] == null ? null : map['format'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourceAccount: map['sourceAccount'] == null ? null : map['sourceAccount'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

