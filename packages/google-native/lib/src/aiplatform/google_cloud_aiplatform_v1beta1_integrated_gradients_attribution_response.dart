// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_blur_baseline_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_smooth_grad_config_response.dart';

/// An attribution method that computes the Aumann-Shapley value taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
class GoogleCloudAiplatformV1beta1IntegratedGradientsAttributionResponse {
  /// Config for IG with blur baseline. When enabled, a linear path from the maximally blurred image to the input image is created. Using a blurred baseline instead of zero (black image) is motivated by the BlurIG approach explained here: https://arxiv.org/abs/2004.03383
  final GoogleCloudAiplatformV1beta1BlurBaselineConfigResponse
      blurBaselineConfig;

  /// Config for SmoothGrad approximation of gradients. When enabled, the gradients are approximated by averaging the gradients from noisy samples in the vicinity of the inputs. Adding noise can help improve the computed gradients. Refer to this paper for more details: https://arxiv.org/pdf/1706.03825.pdf
  final GoogleCloudAiplatformV1beta1SmoothGradConfigResponse smoothGradConfig;

  /// The number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is within the desired error range. Valid range of its value is [1, 100], inclusively.
  final int stepCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1IntegratedGradientsAttributionResponse].
  /// [blurBaselineConfig] Config for IG with blur baseline. When enabled, a linear path from the maximally blurred image to the input image is created. Using a blurred baseline instead of zero (black image) is motivated by the BlurIG approach explained here: https://arxiv.org/abs/2004.03383
  /// [smoothGradConfig] Config for SmoothGrad approximation of gradients. When enabled, the gradients are approximated by averaging the gradients from noisy samples in the vicinity of the inputs. Adding noise can help improve the computed gradients. Refer to this paper for more details: https://arxiv.org/pdf/1706.03825.pdf
  /// [stepCount] The number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is within the desired error range. Valid range of its value is [1, 100], inclusively.
  GoogleCloudAiplatformV1beta1IntegratedGradientsAttributionResponse({
    required this.blurBaselineConfig,
    required this.smoothGradConfig,
    required this.stepCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blurBaselineConfig'] = blurBaselineConfig.toMap();
    map['smoothGradConfig'] = smoothGradConfig.toMap();
    map['stepCount'] = stepCount;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1IntegratedGradientsAttributionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1IntegratedGradientsAttributionResponse(
      blurBaselineConfig:
          GoogleCloudAiplatformV1beta1BlurBaselineConfigResponse.fromMap(
              (map['blurBaselineConfig'] as Map).cast<String, dynamic>()),
      smoothGradConfig:
          GoogleCloudAiplatformV1beta1SmoothGradConfigResponse.fromMap(
              (map['smoothGradConfig'] as Map).cast<String, dynamic>()),
      stepCount: map['stepCount'] as int,
    );
  }
}
