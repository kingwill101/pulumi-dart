// ignore_for_file: unused_element, unnecessary_cast


class ModelSettingsResponse {
  /// The unique model identifier that this ServerlessEndpoint should provision.
  final String? modelId;

  /// Creates a new [ModelSettingsResponse].
  /// [modelId] The unique model identifier that this ServerlessEndpoint should provision.
  ModelSettingsResponse({
    this.modelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': ?modelId,
    };
  }

  factory ModelSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ModelSettingsResponse(
      modelId: map['modelId'] == null ? null : map['modelId'] as String,
    );
  }
}

