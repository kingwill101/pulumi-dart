// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_featurestore_online_serving_config_scaling.dart';

/// OnlineServingConfig specifies the details for provisioning online serving resources.
class GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig {
  /// The number of nodes for the online store. The number of nodes doesn't scale automatically, but you can manually update the number of nodes. If set to 0, the featurestore will not have an online store and cannot be used for online serving.
  final int? fixedNodeCount;

  /// Online serving scaling configuration. Only one of `fixed_node_count` and `scaling` can be set. Setting one will reset the other.
  final GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfigScaling?
      scaling;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig].
  /// [fixedNodeCount] The number of nodes for the online store. The number of nodes doesn't scale automatically, but you can manually update the number of nodes. If set to 0, the featurestore will not have an online store and cannot be used for online serving.
  /// [scaling] Online serving scaling configuration. Only one of `fixed_node_count` and `scaling` can be set. Setting one will reset the other.
  GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig({
    this.fixedNodeCount,
    this.scaling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedNodeCountValue = fixedNodeCount;
    if (fixedNodeCountValue != null) {
      map['fixedNodeCount'] = fixedNodeCountValue;
    }
    final scalingValue = scaling;
    if (scalingValue != null) {
      map['scaling'] = scalingValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfig(
      fixedNodeCount:
          map['fixedNodeCount'] == null ? null : map['fixedNodeCount'] as int,
      scaling: map['scaling'] == null
          ? null
          : GoogleCloudAiplatformV1beta1FeaturestoreOnlineServingConfigScaling
              .fromMap((map['scaling'] as Map).cast<String, dynamic>()),
    );
  }
}
