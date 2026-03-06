// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The runbook property associated with the entity.
class RunbookAssociationProperty {
  /// Gets or sets the name of the runbook.
  final pulumi.Input<String>? name;

  /// Creates a new [RunbookAssociationProperty].
  /// [name] Gets or sets the name of the runbook.
  const RunbookAssociationProperty({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory RunbookAssociationProperty.fromMap(Map<String, dynamic> map) {
    return RunbookAssociationProperty(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

