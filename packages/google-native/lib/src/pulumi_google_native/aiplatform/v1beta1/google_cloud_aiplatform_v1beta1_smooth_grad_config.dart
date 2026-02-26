// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_feature_noise_sigma.dart';

/// Config for SmoothGrad approximation of gradients. When enabled, the gradients are approximated by averaging the gradients from noisy samples in the vicinity of the inputs. Adding noise can help improve the computed gradients. Refer to this paper for more details: https://arxiv.org/pdf/1706.03825.pdf
class GoogleCloudAiplatformV1beta1SmoothGradConfig {
  /// This is similar to noise_sigma, but provides additional flexibility. A separate noise sigma can be provided for each feature, which is useful if their distributions are different. No noise is added to features that are not set. If this field is unset, noise_sigma will be used for all features.
  final GoogleCloudAiplatformV1beta1FeatureNoiseSigma? featureNoiseSigma;

  /// This is a single float value and will be used to add noise to all the features. Use this field when all features are normalized to have the same distribution: scale to range [0, 1], [-1, 1] or z-scoring, where features are normalized to have 0-mean and 1-variance. Learn more about [normalization](https://developers.google.com/machine-learning/data-prep/transform/normalization). For best results the recommended value is about 10% - 20% of the standard deviation of the input feature. Refer to section 3.2 of the SmoothGrad paper: https://arxiv.org/pdf/1706.03825.pdf. Defaults to 0.1. If the distribution is different per feature, set feature_noise_sigma instead for each feature.
  final double? noiseSigma;

  /// The number of gradient samples to use for approximation. The higher this number, the more accurate the gradient is, but the runtime complexity increases by this factor as well. Valid range of its value is [1, 50]. Defaults to 3.
  final int? noisySampleCount;

  GoogleCloudAiplatformV1beta1SmoothGradConfig({
    this.featureNoiseSigma,
    this.noiseSigma,
    this.noisySampleCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final featureNoiseSigmaValue = featureNoiseSigma;
    if (featureNoiseSigmaValue != null) {
      map['featureNoiseSigma'] = featureNoiseSigmaValue.toMap();
    }
    final noiseSigmaValue = noiseSigma;
    if (noiseSigmaValue != null) {
      map['noiseSigma'] = noiseSigmaValue;
    }
    final noisySampleCountValue = noisySampleCount;
    if (noisySampleCountValue != null) {
      map['noisySampleCount'] = noisySampleCountValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1SmoothGradConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1SmoothGradConfig(
      featureNoiseSigma: map['featureNoiseSigma'] == null
          ? null
          : GoogleCloudAiplatformV1beta1FeatureNoiseSigma.fromMap(
              (map['featureNoiseSigma'] as Map).cast<String, dynamic>()),
      noiseSigma:
          map['noiseSigma'] == null ? null : map['noiseSigma'] as double,
      noisySampleCount: map['noisySampleCount'] == null
          ? null
          : map['noisySampleCount'] as int,
    );
  }
}
