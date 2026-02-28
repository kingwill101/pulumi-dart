// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_feature_online_store_bigtable_auto_scaling.dart';

class GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable {
  /// Autoscaling config applied to Bigtable Instance.
  final GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableAutoScaling
      autoScaling;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable].
  /// [autoScaling] Autoscaling config applied to Bigtable Instance.
  GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable({
    required this.autoScaling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoScaling'] = autoScaling.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtable(
      autoScaling:
          GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableAutoScaling
              .fromMap((map['autoScaling'] as Map).cast<String, dynamic>()),
    );
  }
}
