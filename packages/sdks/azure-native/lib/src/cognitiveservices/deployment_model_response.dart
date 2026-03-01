// ignore_for_file: unused_element, unnecessary_cast

import 'call_rate_limit_response.dart';

/// Properties of Cognitive Services account deployment model.
class DeploymentModelResponse {
  /// The call rate limit Cognitive Services account.
  final CallRateLimitResponse callRateLimit;
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

  /// Creates a new [DeploymentModelResponse].
  /// [callRateLimit] The call rate limit Cognitive Services account.
  /// [format] Deployment model format.
  /// [name] Deployment model name.
  /// [publisher] Deployment model publisher.
  /// [source] Optional. Deployment model source ARM resource ID.
  /// [sourceAccount] Optional. Source of the model, another Microsoft.CognitiveServices accounts ARM resource ID.
  /// [version] Optional. Deployment model version. If version is not specified, a default version will be assigned. The default version is different for different models and might change when there is new version available for a model. Default version for a model could be found from list models API.
  DeploymentModelResponse({
    required this.callRateLimit,
    this.format,
    this.name,
    this.publisher,
    this.source,
    this.sourceAccount,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callRateLimit': callRateLimit.toMap(),
      'format': ?format,
      'name': ?name,
      'publisher': ?publisher,
      'source': ?source,
      'sourceAccount': ?sourceAccount,
      'version': ?version,
    };
  }

  factory DeploymentModelResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentModelResponse(
      callRateLimit: CallRateLimitResponse.fromMap((map['callRateLimit'] as Map).cast<String, dynamic>()),
      format: map['format'] == null ? null : map['format'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      source: map['source'] == null ? null : map['source'] as String,
      sourceAccount: map['sourceAccount'] == null ? null : map['sourceAccount'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

