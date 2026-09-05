// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getModel.
class GetModelResult {
  /// Customizations that the model supports.
  final List<String>? customizationsSupporteds;
  final String? id;
  /// Inference types that the model supports.
  final List<String>? inferenceTypesSupporteds;
  /// Input modalities that the model supports.
  final List<String>? inputModalities;
  /// Model ARN.
  final String? modelArn;
  final String? modelId;
  /// Model name.
  final String? modelName;
  /// Output modalities that the model supports.
  final List<String>? outputModalities;
  /// Model provider name.
  final String? providerName;
  final String? region;
  /// Indicates whether the model supports streaming.
  final bool? responseStreamingSupported;

  /// Creates a new [GetModelResult].
  /// [customizationsSupporteds] Customizations that the model supports.
  /// [id] Optional.
  /// [inferenceTypesSupporteds] Inference types that the model supports.
  /// [inputModalities] Input modalities that the model supports.
  /// [modelArn] Model ARN.
  /// [modelId] Optional.
  /// [modelName] Model name.
  /// [outputModalities] Output modalities that the model supports.
  /// [providerName] Model provider name.
  /// [region] Optional.
  /// [responseStreamingSupported] Indicates whether the model supports streaming.
  const GetModelResult({
    this.customizationsSupporteds,
    this.id,
    this.inferenceTypesSupporteds,
    this.inputModalities,
    this.modelArn,
    this.modelId,
    this.modelName,
    this.outputModalities,
    this.providerName,
    this.region,
    this.responseStreamingSupported,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customizationsSupporteds': ?customizationsSupporteds,
      'id': ?id,
      'inferenceTypesSupporteds': ?inferenceTypesSupporteds,
      'inputModalities': ?inputModalities,
      'modelArn': ?modelArn,
      'modelId': ?modelId,
      'modelName': ?modelName,
      'outputModalities': ?outputModalities,
      'providerName': ?providerName,
      'region': ?region,
      'responseStreamingSupported': ?responseStreamingSupported,
    };
  }

  factory GetModelResult.fromMap(Map<String, dynamic> map) {
    return GetModelResult(
      customizationsSupporteds: (() { final guardedValue = map['customizationsSupporteds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inferenceTypesSupporteds: (() { final guardedValue = map['inferenceTypesSupporteds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      inputModalities: (() { final guardedValue = map['inputModalities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      modelArn: (() { final guardedValue = map['modelArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modelName: (() { final guardedValue = map['modelName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputModalities: (() { final guardedValue = map['outputModalities']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      responseStreamingSupported: (() { final guardedValue = map['responseStreamingSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
