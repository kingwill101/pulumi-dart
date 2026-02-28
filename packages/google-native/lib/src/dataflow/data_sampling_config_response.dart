// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for sampling elements.
class DataSamplingConfigResponse {
  /// List of given sampling behaviors to enable. For example, specifying behaviors = [ALWAYS_ON] samples in-flight elements but does not sample exceptions. Can be used to specify multiple behaviors like, behaviors = [ALWAYS_ON, EXCEPTIONS] for specifying periodic sampling and exception sampling. If DISABLED is in the list, then sampling will be disabled and ignore the other given behaviors. Ordering does not matter.
  final List<String> behaviors;

  /// Creates a new [DataSamplingConfigResponse].
  /// [behaviors] List of given sampling behaviors to enable. For example, specifying behaviors = [ALWAYS_ON] samples in-flight elements but does not sample exceptions. Can be used to specify multiple behaviors like, behaviors = [ALWAYS_ON, EXCEPTIONS] for specifying periodic sampling and exception sampling. If DISABLED is in the list, then sampling will be disabled and ignore the other given behaviors. Ordering does not matter.
  DataSamplingConfigResponse({
    required this.behaviors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['behaviors'] = behaviors;
    return map;
  }

  factory DataSamplingConfigResponse.fromMap(Map<String, dynamic> map) {
    return DataSamplingConfigResponse(
      behaviors: (map['behaviors'] as List).cast<String>(),
    );
  }
}
