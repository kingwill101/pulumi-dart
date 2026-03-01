// ignore_for_file: unused_element, unnecessary_cast


/// Model configuration options.
class GroupModelConfigurationResponse {
  /// The URI path to the model.
  final String? modelId;

  /// Creates a new [GroupModelConfigurationResponse].
  /// [modelId] The URI path to the model.
  GroupModelConfigurationResponse({
    this.modelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': ?modelId,
    };
  }

  factory GroupModelConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return GroupModelConfigurationResponse(
      modelId: map['modelId'] == null ? null : map['modelId'] as String,
    );
  }
}

