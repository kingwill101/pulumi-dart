// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Array of ConfigMaps/Secrets from which the variables are substituted for this Kustomization.
class SubstituteFromDefinitionResponse {
  /// Define whether it is ConfigMap or Secret that holds the variables to be used in substitution.
  final pulumi.Input<String>? kind;
  /// Name of the ConfigMap/Secret that holds the variables to be used in substitution.
  final pulumi.Input<String>? name;
  /// Set to True to proceed without ConfigMap/Secret, if it is not present.
  final pulumi.Input<bool>? optional;

  /// Creates a new [SubstituteFromDefinitionResponse].
  /// [kind] Define whether it is ConfigMap or Secret that holds the variables to be used in substitution.
  /// [name] Name of the ConfigMap/Secret that holds the variables to be used in substitution.
  /// [optional] Set to True to proceed without ConfigMap/Secret, if it is not present.
  const SubstituteFromDefinitionResponse({
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
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optional: (() { final guardedValue = map['optional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

