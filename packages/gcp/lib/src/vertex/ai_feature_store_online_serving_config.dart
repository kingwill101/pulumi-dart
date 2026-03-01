// ignore_for_file: unused_element, unnecessary_cast

import 'ai_feature_store_online_serving_config_scaling.dart';

class AiFeatureStoreOnlineServingConfig {
  /// The number of nodes for each cluster. The number of nodes will not scale automatically but can be scaled manually by providing different values when updating.
  final int? fixedNodeCount;

  /// Online serving scaling configuration. Only one of fixedNodeCount and scaling can be set. Setting one will reset the other.
  /// Structure is documented below.
  final AiFeatureStoreOnlineServingConfigScaling? scaling;

  /// Creates a new [AiFeatureStoreOnlineServingConfig].
  /// [fixedNodeCount] The number of nodes for each cluster. The number of nodes will not scale automatically but can be scaled manually by providing different values when updating.
  /// [scaling] Online serving scaling configuration. Only one of fixedNodeCount and scaling can be set. Setting one will reset the other.
  AiFeatureStoreOnlineServingConfig({this.fixedNodeCount, this.scaling});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedNodeCount': ?fixedNodeCount,
      'scaling': ?scaling == null ? null : scaling!.toMap(),
    };
  }

  factory AiFeatureStoreOnlineServingConfig.fromMap(Map<String, dynamic> map) {
    return AiFeatureStoreOnlineServingConfig(
      fixedNodeCount: map['fixedNodeCount'] == null
          ? null
          : map['fixedNodeCount'] as int,
      scaling: map['scaling'] == null
          ? null
          : AiFeatureStoreOnlineServingConfigScaling.fromMap(
              (map['scaling'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
