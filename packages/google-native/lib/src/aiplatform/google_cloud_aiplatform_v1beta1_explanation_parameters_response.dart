// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_examples_response.dart';
import 'google_cloud_aiplatform_v1beta1_integrated_gradients_attribution_response.dart';
import 'google_cloud_aiplatform_v1beta1_sampled_shapley_attribution_response.dart';
import 'google_cloud_aiplatform_v1beta1_xrai_attribution_response.dart';

/// Parameters to configure explaining for Model's predictions.
class GoogleCloudAiplatformV1beta1ExplanationParametersResponse {
  /// Example-based explanations that returns the nearest neighbors from the provided dataset.
  final GoogleCloudAiplatformV1beta1ExamplesResponse examples;

  /// An attribution method that computes Aumann-Shapley values taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  final GoogleCloudAiplatformV1beta1IntegratedGradientsAttributionResponse
      integratedGradientsAttribution;

  /// If populated, only returns attributions that have output_index contained in output_indices. It must be an ndarray of integers, with the same shape of the output it's explaining. If not populated, returns attributions for top_k indices of outputs. If neither top_k nor output_indices is populated, returns the argmax index of the outputs. Only applicable to Models that predict multiple outputs (e,g, multi-class Models that predict multiple classes).
  final List<dynamic> outputIndices;

  /// An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features. Refer to this paper for model details: https://arxiv.org/abs/1306.4265.
  final GoogleCloudAiplatformV1beta1SampledShapleyAttributionResponse
      sampledShapleyAttribution;

  /// If populated, returns attributions for top K indices of outputs (defaults to 1). Only applies to Models that predicts more than one outputs (e,g, multi-class Models). When set to -1, returns explanations for all outputs.
  final int topK;

  /// An attribution method that redistributes Integrated Gradients attribution to segmented regions, taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 XRAI currently performs better on natural images, like a picture of a house or an animal. If the images are taken in artificial environments, like a lab or manufacturing line, or from diagnostic equipment, like x-rays or quality-control cameras, use Integrated Gradients instead.
  final GoogleCloudAiplatformV1beta1XraiAttributionResponse xraiAttribution;

  /// Creates a new [GoogleCloudAiplatformV1beta1ExplanationParametersResponse].
  /// [examples] Example-based explanations that returns the nearest neighbors from the provided dataset.
  /// [integratedGradientsAttribution] An attribution method that computes Aumann-Shapley values taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1703.01365
  /// [outputIndices] If populated, only returns attributions that have output_index contained in output_indices. It must be an ndarray of integers, with the same shape of the output it's explaining. If not populated, returns attributions for top_k indices of outputs. If neither top_k nor output_indices is populated, returns the argmax index of the outputs. Only applicable to Models that predict multiple outputs (e,g, multi-class Models that predict multiple classes).
  /// [sampledShapleyAttribution] An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features. Refer to this paper for model details: https://arxiv.org/abs/1306.4265.
  /// [topK] If populated, returns attributions for top K indices of outputs (defaults to 1). Only applies to Models that predicts more than one outputs (e,g, multi-class Models). When set to -1, returns explanations for all outputs.
  /// [xraiAttribution] An attribution method that redistributes Integrated Gradients attribution to segmented regions, taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 XRAI currently performs better on natural images, like a picture of a house or an animal. If the images are taken in artificial environments, like a lab or manufacturing line, or from diagnostic equipment, like x-rays or quality-control cameras, use Integrated Gradients instead.
  GoogleCloudAiplatformV1beta1ExplanationParametersResponse({
    required this.examples,
    required this.integratedGradientsAttribution,
    required this.outputIndices,
    required this.sampledShapleyAttribution,
    required this.topK,
    required this.xraiAttribution,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['examples'] = examples.toMap();
    map['integratedGradientsAttribution'] =
        integratedGradientsAttribution.toMap();
    map['outputIndices'] = outputIndices;
    map['sampledShapleyAttribution'] = sampledShapleyAttribution.toMap();
    map['topK'] = topK;
    map['xraiAttribution'] = xraiAttribution.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ExplanationParametersResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ExplanationParametersResponse(
      examples: GoogleCloudAiplatformV1beta1ExamplesResponse.fromMap(
          (map['examples'] as Map).cast<String, dynamic>()),
      integratedGradientsAttribution:
          GoogleCloudAiplatformV1beta1IntegratedGradientsAttributionResponse
              .fromMap((map['integratedGradientsAttribution'] as Map)
                  .cast<String, dynamic>()),
      outputIndices: (map['outputIndices'] as List).cast<dynamic>(),
      sampledShapleyAttribution:
          GoogleCloudAiplatformV1beta1SampledShapleyAttributionResponse.fromMap(
              (map['sampledShapleyAttribution'] as Map)
                  .cast<String, dynamic>()),
      topK: map['topK'] as int,
      xraiAttribution:
          GoogleCloudAiplatformV1beta1XraiAttributionResponse.fromMap(
              (map['xraiAttribution'] as Map).cast<String, dynamic>()),
    );
  }
}
