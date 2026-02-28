// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_feature_online_store_bigtable_auto_scaling_response.dart';

class GoogleCloudAiplatformV1FeatureOnlineStoreBigtableResponse {
  /// Autoscaling config applied to Bigtable Instance.
  final GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScalingResponse
      autoScaling;

  /// Creates a new [GoogleCloudAiplatformV1FeatureOnlineStoreBigtableResponse].
  /// [autoScaling] Autoscaling config applied to Bigtable Instance.
  GoogleCloudAiplatformV1FeatureOnlineStoreBigtableResponse({
    required this.autoScaling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoScaling'] = autoScaling.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1FeatureOnlineStoreBigtableResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureOnlineStoreBigtableResponse(
      autoScaling:
          GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScalingResponse
              .fromMap((map['autoScaling'] as Map).cast<String, dynamic>()),
    );
  }
}
