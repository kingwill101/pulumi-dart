// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_examples.dart';
import 'google_cloud_aiplatform_v1beta1_integrated_gradients_attribution.dart';
import 'google_cloud_aiplatform_v1beta1_sampled_shapley_attribution.dart';
import 'google_cloud_aiplatform_v1beta1_xrai_attribution.dart';

/// Parameters to configure explaining for Model's predictions.
class GoogleCloudAiplatformV1beta1ExplanationParameters {
  /// Example-based explanations that returns the nearest neighbors from the provided dataset.
  final GoogleCloudAiplatformV1beta1Examples? examples;

  /// An attribution method that computes Aumann-Shapley values taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  final GoogleCloudAiplatformV1beta1IntegratedGradientsAttribution?
      integratedGradientsAttribution;

  /// If populated, only returns attributions that have output_index contained in output_indices. It must be an ndarray of integers, with the same shape of the output it's explaining. If not populated, returns attributions for top_k indices of outputs. If neither top_k nor output_indices is populated, returns the argmax index of the outputs. Only applicable to Models that predict multiple outputs (e,g, multi-class Models that predict multiple classes).
  final List<dynamic>? outputIndices;

  /// An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features. Refer to this paper for model details: https://arxiv.org/abs/1306.4265.
  final GoogleCloudAiplatformV1beta1SampledShapleyAttribution?
      sampledShapleyAttribution;

  /// If populated, returns attributions for top K indices of outputs (defaults to 1). Only applies to Models that predicts more than one outputs (e,g, multi-class Models). When set to -1, returns explanations for all outputs.
  final int? topK;

  /// An attribution method that redistributes Integrated Gradients attribution to segmented regions, taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 XRAI currently performs better on natural images, like a picture of a house or an animal. If the images are taken in artificial environments, like a lab or manufacturing line, or from diagnostic equipment, like x-rays or quality-control cameras, use Integrated Gradients instead.
  final GoogleCloudAiplatformV1beta1XraiAttribution? xraiAttribution;

  /// Creates a new [GoogleCloudAiplatformV1beta1ExplanationParameters].
  /// [examples] Example-based explanations that returns the nearest neighbors from the provided dataset.
  /// [integratedGradientsAttribution] An attribution method that computes Aumann-Shapley values taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  /// [outputIndices] If populated, only returns attributions that have output_index contained in output_indices. It must be an ndarray of integers, with the same shape of the output it's explaining. If not populated, returns attributions for top_k indices of outputs. If neither top_k nor output_indices is populated, returns the argmax index of the outputs. Only applicable to Models that predict multiple outputs (e,g, multi-class Models that predict multiple classes).
  /// [sampledShapleyAttribution] An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features. Refer to this paper for model details: https://arxiv.org/abs/1306.4265.
  /// [topK] If populated, returns attributions for top K indices of outputs (defaults to 1). Only applies to Models that predicts more than one outputs (e,g, multi-class Models). When set to -1, returns explanations for all outputs.
  /// [xraiAttribution] An attribution method that redistributes Integrated Gradients attribution to segmented regions, taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 XRAI currently performs better on natural images, like a picture of a house or an animal. If the images are taken in artificial environments, like a lab or manufacturing line, or from diagnostic equipment, like x-rays or quality-control cameras, use Integrated Gradients instead.
  GoogleCloudAiplatformV1beta1ExplanationParameters({
    this.examples,
    this.integratedGradientsAttribution,
    this.outputIndices,
    this.sampledShapleyAttribution,
    this.topK,
    this.xraiAttribution,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final examplesValue = examples;
    if (examplesValue != null) {
      map['examples'] = examplesValue.toMap();
    }
    final integratedGradientsAttributionValue = integratedGradientsAttribution;
    if (integratedGradientsAttributionValue != null) {
      map['integratedGradientsAttribution'] =
          integratedGradientsAttributionValue.toMap();
    }
    final outputIndicesValue = outputIndices;
    if (outputIndicesValue != null) {
      map['outputIndices'] = outputIndicesValue;
    }
    final sampledShapleyAttributionValue = sampledShapleyAttribution;
    if (sampledShapleyAttributionValue != null) {
      map['sampledShapleyAttribution'] = sampledShapleyAttributionValue.toMap();
    }
    final topKValue = topK;
    if (topKValue != null) {
      map['topK'] = topKValue;
    }
    final xraiAttributionValue = xraiAttribution;
    if (xraiAttributionValue != null) {
      map['xraiAttribution'] = xraiAttributionValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ExplanationParameters.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ExplanationParameters(
      examples: map['examples'] == null
          ? null
          : GoogleCloudAiplatformV1beta1Examples.fromMap(
              (map['examples'] as Map).cast<String, dynamic>()),
      integratedGradientsAttribution: map['integratedGradientsAttribution'] ==
              null
          ? null
          : GoogleCloudAiplatformV1beta1IntegratedGradientsAttribution.fromMap(
              (map['integratedGradientsAttribution'] as Map)
                  .cast<String, dynamic>()),
      outputIndices: map['outputIndices'] == null
          ? null
          : (map['outputIndices'] as List).cast<dynamic>(),
      sampledShapleyAttribution: map['sampledShapleyAttribution'] == null
          ? null
          : GoogleCloudAiplatformV1beta1SampledShapleyAttribution.fromMap(
              (map['sampledShapleyAttribution'] as Map)
                  .cast<String, dynamic>()),
      topK: map['topK'] == null ? null : map['topK'] as int,
      xraiAttribution: map['xraiAttribution'] == null
          ? null
          : GoogleCloudAiplatformV1beta1XraiAttribution.fromMap(
              (map['xraiAttribution'] as Map).cast<String, dynamic>()),
    );
  }
}
