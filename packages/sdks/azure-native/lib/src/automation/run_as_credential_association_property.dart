// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RunAs credential to use for hybrid worker.
class RunAsCredentialAssociationProperty {
  /// Gets or sets the name of the credential.
  final pulumi.Input<String>? name;

  /// Creates a new [RunAsCredentialAssociationProperty].
  /// [name] Gets or sets the name of the credential.
  RunAsCredentialAssociationProperty({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory RunAsCredentialAssociationProperty.fromMap(Map<String, dynamic> map) {
    return RunAsCredentialAssociationProperty(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
