// ignore_for_file: unused_element, unnecessary_cast


/// Settings for automatically discovering entities for the health model.
class ModelDiscoverySettingsResponse {
  /// Whether to add all recommended signals to the discovered entities.
  final String addRecommendedSignals;
  /// Which Managed Identity of the health model to use for discovery. Defaults to SystemAssigned, if not set. Can be set to 'SystemAssigned' or to the resource id of a user-assigned managed identity which is linked to the health model.
  final String? identity;
  /// The scope from which entities should be automatically discovered. For example, the resource id of a Service Group.
  final String scope;

  /// Creates a new [ModelDiscoverySettingsResponse].
  /// [addRecommendedSignals] Whether to add all recommended signals to the discovered entities.
  /// [identity] Which Managed Identity of the health model to use for discovery. Defaults to SystemAssigned, if not set. Can be set to 'SystemAssigned' or to the resource id of a user-assigned managed identity which is linked to the health model.
  /// [scope] The scope from which entities should be automatically discovered. For example, the resource id of a Service Group.
  ModelDiscoverySettingsResponse({
    required this.addRecommendedSignals,
    this.identity,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addRecommendedSignals': addRecommendedSignals,
      'identity': ?identity,
      'scope': scope,
    };
  }

  factory ModelDiscoverySettingsResponse.fromMap(Map<String, dynamic> map) {
    return ModelDiscoverySettingsResponse(
      addRecommendedSignals: map['addRecommendedSignals'] as String,
      identity: map['identity'] == null ? null : map['identity'] as String,
      scope: map['scope'] as String,
    );
  }
}

