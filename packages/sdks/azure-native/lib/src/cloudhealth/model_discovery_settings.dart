// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for automatically discovering entities for the health model.
class ModelDiscoverySettings {
  /// Whether to add all recommended signals to the discovered entities.
  final pulumi.Input<String> addRecommendedSignals;
  /// Which Managed Identity of the health model to use for discovery. Defaults to SystemAssigned, if not set. Can be set to 'SystemAssigned' or to the resource id of a user-assigned managed identity which is linked to the health model.
  final pulumi.Input<String>? identity;
  /// The scope from which entities should be automatically discovered. For example, the resource id of a Service Group.
  final pulumi.Input<String> scope;

  /// Creates a new [ModelDiscoverySettings].
  /// [addRecommendedSignals] Whether to add all recommended signals to the discovered entities.
  /// [identity] Which Managed Identity of the health model to use for discovery. Defaults to SystemAssigned, if not set. Can be set to 'SystemAssigned' or to the resource id of a user-assigned managed identity which is linked to the health model.
  /// [scope] The scope from which entities should be automatically discovered. For example, the resource id of a Service Group.
  ModelDiscoverySettings({
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

  factory ModelDiscoverySettings.fromMap(Map<String, dynamic> map) {
    return ModelDiscoverySettings(
      addRecommendedSignals: (map['addRecommendedSignals'] as String).input(),
      identity: map['identity'] == null ? null : (map['identity'] as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

