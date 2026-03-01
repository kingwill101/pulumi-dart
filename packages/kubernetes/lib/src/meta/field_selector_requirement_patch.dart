// ignore_for_file: unused_element, unnecessary_cast


/// FieldSelectorRequirement is a selector that contains values, a key, and an operator that relates the key and values.
class FieldSelectorRequirementPatch {
  /// key is the field selector key that the requirement applies to.
  final String? key;
  /// operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. The list of operators may grow in the future.
  final String? operator;
  /// values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty.
  final List<String>? values;

  /// Creates a new [FieldSelectorRequirementPatch].
  /// [key] key is the field selector key that the requirement applies to.
  /// [operator] operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. The list of operators may grow in the future.
  /// [values] values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty.
  FieldSelectorRequirementPatch({
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

  factory FieldSelectorRequirementPatch.fromMap(Map<String, dynamic> map) {
    return FieldSelectorRequirementPatch(
      key: map['key'] == null ? null : map['key'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

