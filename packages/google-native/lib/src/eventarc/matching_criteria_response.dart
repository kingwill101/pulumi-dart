// ignore_for_file: unused_element, unnecessary_cast

/// Matches events based on exact matches on the CloudEvents attributes.
class MatchingCriteriaResponse {
  /// The name of a CloudEvents attribute. Currently, only a subset of attributes can be specified. All triggers MUST provide a matching criteria for the 'type' attribute.
  final String attribute;

  /// The value for the attribute.
  final String value;

  /// Creates a new [MatchingCriteriaResponse].
  /// [attribute] The name of a CloudEvents attribute. Currently, only a subset of attributes can be specified. All triggers MUST provide a matching criteria for the 'type' attribute.
  /// [value] The value for the attribute.
  MatchingCriteriaResponse({
    required this.attribute,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attribute'] = attribute;
    map['value'] = value;
    return map;
  }

  factory MatchingCriteriaResponse.fromMap(Map<String, dynamic> map) {
    return MatchingCriteriaResponse(
      attribute: map['attribute'] as String,
      value: map['value'] as String,
    );
  }
}
