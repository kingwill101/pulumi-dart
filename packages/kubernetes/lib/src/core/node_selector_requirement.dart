// ignore_for_file: unused_element, unnecessary_cast


/// A node selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
class NodeSelectorRequirement {
  /// The label key that the selector applies to.
  final String key;
  /// Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.
  final String operator;
  /// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
  final List<String>? values;

  /// Creates a new [NodeSelectorRequirement].
  /// [key] The label key that the selector applies to.
  /// [operator] Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.
  /// [values] An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
  NodeSelectorRequirement({
    required this.key,
    required this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'values': ?values,
    };
  }

  factory NodeSelectorRequirement.fromMap(Map<String, dynamic> map) {
    return NodeSelectorRequirement(
      key: map['key'] as String,
      operator: map['operator'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

