// ignore_for_file: unused_element, unnecessary_cast

class ControlConditionQueryTerm {
  /// If true, the query term must be an exact match. Otherwise, the query term can be a partial match.
  final bool? fullMatch;

  /// The value of the query term.
  final String? value;

  /// Creates a new [ControlConditionQueryTerm].
  /// [fullMatch] If true, the query term must be an exact match. Otherwise, the query term can be a partial match.
  /// [value] The value of the query term.
  ControlConditionQueryTerm({
    this.fullMatch,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fullMatchValue = fullMatch;
    if (fullMatchValue != null) {
      map['fullMatch'] = fullMatchValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory ControlConditionQueryTerm.fromMap(Map<String, dynamic> map) {
    return ControlConditionQueryTerm(
      fullMatch: map['fullMatch'] == null ? null : map['fullMatch'] as bool,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
