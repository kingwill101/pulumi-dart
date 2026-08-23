// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecommendationPreferencesPreferredResource {
  /// The preferred resource type values to exclude from the recommendation candidates. If this isn’t specified, all supported resources are included by default.
  final pulumi.Input<List<String>>? excludeLists;
  /// The preferred resource type values to include in the recommendation candidates. You can specify the exact resource type value, such as `"m5.large"`, or use wild card expressions, such as `"m5"`. If this isn’t specified, all supported resources are included by default.
  final pulumi.Input<List<String>>? includeLists;
  final pulumi.Input<String> name;

  /// Creates a new [RecommendationPreferencesPreferredResource].
  /// [excludeLists] The preferred resource type values to exclude from the recommendation candidates. If this isn’t specified, all supported resources are included by default.
  /// [includeLists] The preferred resource type values to include in the recommendation candidates. You can specify the exact resource type value, such as `"m5.large"`, or use wild card expressions, such as `"m5"`. If this isn’t specified, all supported resources are included by default.
  /// [name] Required.
  const RecommendationPreferencesPreferredResource({
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
      excludeLists: (() { final guardedValue = map['excludeLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeLists: (() { final guardedValue = map['includeLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
