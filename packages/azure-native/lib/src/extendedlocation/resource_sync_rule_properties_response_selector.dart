// ignore_for_file: unused_element, unnecessary_cast


/// A label selector is composed of two parts, matchLabels and matchExpressions. The first part, matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is 'key', the operator is 'In', and the values array contains only 'value'. The second part, matchExpressions is a list of resource selector requirements. Valid operators include In, NotIn, Exists, and DoesNotExist. The values set must be non-empty in the case of In and NotIn. The values set must be empty in the case of Exists and DoesNotExist. All of the requirements, from both matchLabels and matchExpressions must all be satisfied in order to match.
class ResourceSyncRulePropertiesResponseSelector {
  /// MatchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is 'key', the operator is 'In', and the values array contains only 'value'.
  final Map<String, String>? matchLabels;

  /// Creates a new [ResourceSyncRulePropertiesResponseSelector].
  /// [matchLabels] MatchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is 'key', the operator is 'In', and the values array contains only 'value'.
  ResourceSyncRulePropertiesResponseSelector({
    this.matchLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchLabels': ?matchLabels,
    };
  }

  factory ResourceSyncRulePropertiesResponseSelector.fromMap(Map<String, dynamic> map) {
    return ResourceSyncRulePropertiesResponseSelector(
      matchLabels: map['matchLabels'] == null ? null : (map['matchLabels'] as Map).cast<String, String>(),
    );
  }
}

