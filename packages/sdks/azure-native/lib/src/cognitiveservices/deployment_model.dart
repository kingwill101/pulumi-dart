// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Cognitive Services account deployment model.
class DeploymentModel {
  /// Deployment model format.
  final pulumi.Input<String>? format;

  /// Deployment model name.
  final pulumi.Input<String>? name;

  /// Deployment model publisher.
  final pulumi.Input<String>? publisher;

  /// Optional. Deployment model source ARM resource ID.
  final pulumi.Input<String>? source;

  /// Optional. Source of the model, another Microsoft.CognitiveServices accounts ARM resource ID.
  final pulumi.Input<String>? sourceAccount;

  /// Optional. Deployment model version. If version is not specified, a default version will be assigned. The default version is different for different models and might change when there is new version available for a model. Default version for a model could be found from list models API.
  final pulumi.Input<String>? version;

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
      format: (() {
        final guardedValue = map['format'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publisher: (() {
        final guardedValue = map['publisher'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceAccount: (() {
        final guardedValue = map['sourceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
