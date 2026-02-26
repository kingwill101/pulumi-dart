// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getModel.
class GetModelResult {
  /// Customizations that the model supports.
  final List<String> customizationsSupporteds;
  final String id;

  /// Inference types that the model supports.
  final List<String> inferenceTypesSupporteds;

  /// Input modalities that the model supports.
  final List<String> inputModalities;

  /// Model ARN.
  final String modelArn;
  final String modelId;

  /// Model name.
  final String modelName;

  /// Output modalities that the model supports.
  final List<String> outputModalities;

  /// Model provider name.
  final String providerName;
  final String region;

  /// Indicates whether the model supports streaming.
  final bool responseStreamingSupported;

  GetModelResult({
    required this.customizationsSupporteds,
    required this.id,
    required this.inferenceTypesSupporteds,
    required this.inputModalities,
    required this.modelArn,
    required this.modelId,
    required this.modelName,
    required this.outputModalities,
    required this.providerName,
    required this.region,
    required this.responseStreamingSupported,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customizationsSupporteds'] = customizationsSupporteds;
    map['id'] = id;
    map['inferenceTypesSupporteds'] = inferenceTypesSupporteds;
    map['inputModalities'] = inputModalities;
    map['modelArn'] = modelArn;
    map['modelId'] = modelId;
    map['modelName'] = modelName;
    map['outputModalities'] = outputModalities;
    map['providerName'] = providerName;
    map['region'] = region;
    map['responseStreamingSupported'] = responseStreamingSupported;
    return map;
  }

  factory GetModelResult.fromMap(Map<String, dynamic> map) {
    return GetModelResult(
      customizationsSupporteds:
          (map['customizationsSupporteds'] as List).cast<String>(),
      id: map['id'] as String,
      inferenceTypesSupporteds:
          (map['inferenceTypesSupporteds'] as List).cast<String>(),
      inputModalities: (map['inputModalities'] as List).cast<String>(),
      modelArn: map['modelArn'] as String,
      modelId: map['modelId'] as String,
      modelName: map['modelName'] as String,
      outputModalities: (map['outputModalities'] as List).cast<String>(),
      providerName: map['providerName'] as String,
      region: map['region'] as String,
      responseStreamingSupported: map['responseStreamingSupported'] as bool,
    );
  }
}
