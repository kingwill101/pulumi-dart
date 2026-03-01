// ignore_for_file: unused_element, unnecessary_cast


/// A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
class LabelSelectorRequirementPatch {
  /// key is the label key that the selector applies to.
  final String? key;
  /// operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
  final String? operator;
  /// values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  final List<String>? values;

  /// Creates a new [LabelSelectorRequirementPatch].
  /// [key] key is the label key that the selector applies to.
  /// [operator] operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
  /// [values] values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  LabelSelectorRequirementPatch({
    this.key,
    this.operator,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operator': ?operator,
      'values': ?values,
    };
  }

  factory LabelSelectorRequirementPatch.fromMap(Map<String, dynamic> map) {
    return LabelSelectorRequirementPatch(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

