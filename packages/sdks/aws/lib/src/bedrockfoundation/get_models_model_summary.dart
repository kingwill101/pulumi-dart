// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetModelsModelSummary {
  /// Customizations that the model supports.
  final pulumi.Input<List<String>> customizationsSupporteds;
  /// Inference types that the model supports.
  final pulumi.Input<List<String>> inferenceTypesSupporteds;
  /// Input modalities that the model supports.
  final pulumi.Input<List<String>> inputModalities;
  /// Model ARN.
  final pulumi.Input<String> modelArn;
  /// Model identifier.
  final pulumi.Input<String> modelId;
  /// Model name.
  final pulumi.Input<String> modelName;
  /// Output modalities that the model supports.
  final pulumi.Input<List<String>> outputModalities;
  /// Model provider name.
  final pulumi.Input<String> providerName;
  /// Indicates whether the model supports streaming.
  final pulumi.Input<bool> responseStreamingSupported;

  /// Creates a new [GetModelsModelSummary].
  /// [customizationsSupporteds] Customizations that the model supports.
  /// [inferenceTypesSupporteds] Inference types that the model supports.
  /// [inputModalities] Input modalities that the model supports.
  /// [modelArn] Model ARN.
  /// [modelId] Model identifier.
  /// [modelName] Model name.
  /// [outputModalities] Output modalities that the model supports.
  /// [providerName] Model provider name.
  /// [responseStreamingSupported] Indicates whether the model supports streaming.
  const GetModelsModelSummary({
    required this.customizationsSupporteds,
    required this.inferenceTypesSupporteds,
    required this.inputModalities,
    required this.modelArn,
    required this.modelId,
    required this.modelName,
    required this.outputModalities,
    required this.providerName,
    required this.responseStreamingSupported,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customizationsSupporteds': customizationsSupporteds,
      'inferenceTypesSupporteds': inferenceTypesSupporteds,
      'inputModalities': inputModalities,
      'modelArn': modelArn,
      'modelId': modelId,
      'modelName': modelName,
      'outputModalities': outputModalities,
      'providerName': providerName,
      'responseStreamingSupported': responseStreamingSupported,
    };
  }

  factory GetModelsModelSummary.fromMap(Map<String, dynamic> map) {
    return GetModelsModelSummary(
      customizationsSupporteds: pulumi.Input.fromValue((map['customizationsSupporteds'] as List).cast<String>()),
      inferenceTypesSupporteds: pulumi.Input.fromValue((map['inferenceTypesSupporteds'] as List).cast<String>()),
      inputModalities: pulumi.Input.fromValue((map['inputModalities'] as List).cast<String>()),
      modelArn: pulumi.Input.fromValue(map['modelArn'] as String),
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      modelName: pulumi.Input.fromValue(map['modelName'] as String),
      outputModalities: pulumi.Input.fromValue((map['outputModalities'] as List).cast<String>()),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
      responseStreamingSupported: pulumi.Input.fromValue(map['responseStreamingSupported'] as bool),
    );
  }
}
