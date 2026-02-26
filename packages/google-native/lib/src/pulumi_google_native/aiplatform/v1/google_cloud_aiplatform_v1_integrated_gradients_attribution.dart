// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_blur_baseline_config.dart';
import 'google_cloud_aiplatform_v1_smooth_grad_config.dart';

/// An attribution method that computes the Aumann-Shapley value taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
class GoogleCloudAiplatformV1IntegratedGradientsAttribution {
  /// Config for IG with blur baseline. When enabled, a linear path from the maximally blurred image to the input image is created. Using a blurred baseline instead of zero (black image) is motivated by the BlurIG approach explained here: https://arxiv.org/abs/2004.03383
  final GoogleCloudAiplatformV1BlurBaselineConfig? blurBaselineConfig;

  /// Config for SmoothGrad approximation of gradients. When enabled, the gradients are approximated by averaging the gradients from noisy samples in the vicinity of the inputs. Adding noise can help improve the computed gradients. Refer to this paper for more details: https://arxiv.org/pdf/1706.03825.pdf
  final GoogleCloudAiplatformV1SmoothGradConfig? smoothGradConfig;

  /// The number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is within the desired error range. Valid range of its value is [1, 100], inclusively.
  final int stepCount;

  GoogleCloudAiplatformV1IntegratedGradientsAttribution({
    this.blurBaselineConfig,
    this.smoothGradConfig,
    required this.stepCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blurBaselineConfigValue = blurBaselineConfig;
    if (blurBaselineConfigValue != null) {
      map['blurBaselineConfig'] = blurBaselineConfigValue.toMap();
    }
    final smoothGradConfigValue = smoothGradConfig;
    if (smoothGradConfigValue != null) {
      map['smoothGradConfig'] = smoothGradConfigValue.toMap();
    }
    map['stepCount'] = stepCount;
    return map;
  }

  factory GoogleCloudAiplatformV1IntegratedGradientsAttribution.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1IntegratedGradientsAttribution(
      blurBaselineConfig: map['blurBaselineConfig'] == null
          ? null
          : GoogleCloudAiplatformV1BlurBaselineConfig.fromMap(
              (map['blurBaselineConfig'] as Map).cast<String, dynamic>()),
      smoothGradConfig: map['smoothGradConfig'] == null
          ? null
          : GoogleCloudAiplatformV1SmoothGradConfig.fromMap(
              (map['smoothGradConfig'] as Map).cast<String, dynamic>()),
      stepCount: map['stepCount'] as int,
    );
  }
}
