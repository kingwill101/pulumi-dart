// ignore_for_file: unused_element, unnecessary_cast

class GetModelsModelSummary {
  /// Customizations that the model supports.
  final List<String> customizationsSupporteds;

  /// Inference types that the model supports.
  final List<String> inferenceTypesSupporteds;

  /// Input modalities that the model supports.
  final List<String> inputModalities;

  /// Model ARN.
  final String modelArn;

  /// Model identifier.
  final String modelId;

  /// Model name.
  final String modelName;

  /// Output modalities that the model supports.
  final List<String> outputModalities;

  /// Model provider name.
  final String providerName;

  /// Indicates whether the model supports streaming.
  final bool responseStreamingSupported;

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
  GetModelsModelSummary({
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
      customizationsSupporteds: (map['customizationsSupporteds'] as List)
          .cast<String>(),
      inferenceTypesSupporteds: (map['inferenceTypesSupporteds'] as List)
          .cast<String>(),
      inputModalities: (map['inputModalities'] as List).cast<String>(),
      modelArn: map['modelArn'] as String,
      modelId: map['modelId'] as String,
      modelName: map['modelName'] as String,
      outputModalities: (map['outputModalities'] as List).cast<String>(),
      providerName: map['providerName'] as String,
      responseStreamingSupported: map['responseStreamingSupported'] as bool,
    );
  }
}
