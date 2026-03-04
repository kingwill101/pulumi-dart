// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The runbook property associated with the entity.
class RunbookAssociationPropertyResponse {
  /// Gets or sets the name of the runbook.
  final pulumi.Input<String>? name;

  /// Creates a new [RunbookAssociationPropertyResponse].
  /// [name] Gets or sets the name of the runbook.
  RunbookAssociationPropertyResponse({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory RunbookAssociationPropertyResponse.fromMap(Map<String, dynamic> map) {
    return RunbookAssociationPropertyResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
