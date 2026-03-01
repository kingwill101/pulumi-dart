// ignore_for_file: unused_element, unnecessary_cast


class ModelSettings {
  /// The unique model identifier that this ServerlessEndpoint should provision.
  final String? modelId;

  /// Creates a new [ModelSettings].
  /// [modelId] The unique model identifier that this ServerlessEndpoint should provision.
  ModelSettings({
    this.modelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': ?modelId,
    };
  }

  factory ModelSettings.fromMap(Map<String, dynamic> map) {
    return ModelSettings(
      modelId: map['modelId'] == null ? null : map['modelId'] as String,
    );
  }
}

