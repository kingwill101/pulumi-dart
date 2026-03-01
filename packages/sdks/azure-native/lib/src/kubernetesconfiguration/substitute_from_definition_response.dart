// ignore_for_file: unused_element, unnecessary_cast


/// Array of ConfigMaps/Secrets from which the variables are substituted for this Kustomization.
class SubstituteFromDefinitionResponse {
  /// Define whether it is ConfigMap or Secret that holds the variables to be used in substitution.
  final String? kind;
  /// Name of the ConfigMap/Secret that holds the variables to be used in substitution.
  final String? name;
  /// Set to True to proceed without ConfigMap/Secret, if it is not present.
  final bool? optional;

  /// Creates a new [SubstituteFromDefinitionResponse].
  /// [kind] Define whether it is ConfigMap or Secret that holds the variables to be used in substitution.
  /// [name] Name of the ConfigMap/Secret that holds the variables to be used in substitution.
  /// [optional] Set to True to proceed without ConfigMap/Secret, if it is not present.
  SubstituteFromDefinitionResponse({
    this.kind,
    this.name,
    this.optional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'name': ?name,
      'optional': ?optional,
    };
  }

  factory SubstituteFromDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return SubstituteFromDefinitionResponse(
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      optional: map['optional'] == null ? null : map['optional'] as bool,
    );
  }
}

