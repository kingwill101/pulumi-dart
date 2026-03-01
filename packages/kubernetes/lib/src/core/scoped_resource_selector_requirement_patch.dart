// ignore_for_file: unused_element, unnecessary_cast


/// A scoped-resource selector requirement is a selector that contains values, a scope name, and an operator that relates the scope name and values.
class ScopedResourceSelectorRequirementPatch {
  /// Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.
  final String? operator;
  /// The name of the scope that the selector applies to.
  final String? scopeName;
  /// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  final List<String>? values;

  /// Creates a new [ScopedResourceSelectorRequirementPatch].
  /// [operator] Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.
  /// [scopeName] The name of the scope that the selector applies to.
  /// [values] An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  ScopedResourceSelectorRequirementPatch({
    this.operator,
    this.scopeName,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': ?operator,
      'scopeName': ?scopeName,
      'values': ?values,
    };
  }

  factory ScopedResourceSelectorRequirementPatch.fromMap(Map<String, dynamic> map) {
    return ScopedResourceSelectorRequirementPatch(
      operator: map['operator'] == null ? null : map['operator'] as String,
      scopeName: map['scopeName'] == null ? null : map['scopeName'] as String,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

