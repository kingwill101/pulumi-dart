// ignore_for_file: unused_element, unnecessary_cast


class RecommendationPreferencesPreferredResource {
  /// The preferred resource type values to exclude from the recommendation candidates. If this isn’t specified, all supported resources are included by default.
  final List<String>? excludeLists;
  /// The preferred resource type values to include in the recommendation candidates. You can specify the exact resource type value, such as `"m5.large"`, or use wild card expressions, such as `"m5"`. If this isn’t specified, all supported resources are included by default.
  final List<String>? includeLists;
  final String name;

  /// Creates a new [RecommendationPreferencesPreferredResource].
  /// [excludeLists] The preferred resource type values to exclude from the recommendation candidates. If this isn’t specified, all supported resources are included by default.
  /// [includeLists] The preferred resource type values to include in the recommendation candidates. You can specify the exact resource type value, such as `"m5.large"`, or use wild card expressions, such as `"m5"`. If this isn’t specified, all supported resources are included by default.
  /// [name] Required.
  RecommendationPreferencesPreferredResource({
    this.excludeLists,
    this.includeLists,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeLists': ?excludeLists,
      'includeLists': ?includeLists,
      'name': name,
    };
  }

  factory RecommendationPreferencesPreferredResource.fromMap(Map<String, dynamic> map) {
    return RecommendationPreferencesPreferredResource(
      excludeLists: map['excludeLists'] == null ? null : (map['excludeLists'] as List).cast<String>(),
      includeLists: map['includeLists'] == null ? null : (map['includeLists'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

