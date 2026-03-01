// ignore_for_file: unused_element, unnecessary_cast


/// Model configuration options.
class GroupModelConfiguration {
  /// The URI path to the model.
  final String? modelId;

  /// Creates a new [GroupModelConfiguration].
  /// [modelId] The URI path to the model.
  GroupModelConfiguration({
    this.modelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': ?modelId,
    };
  }

  factory GroupModelConfiguration.fromMap(Map<String, dynamic> map) {
    return GroupModelConfiguration(
      modelId: map['modelId'] == null ? null : map['modelId'] as String,
    );
  }
}

