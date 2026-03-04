// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RunAs credential to use for hybrid worker.
class RunAsCredentialAssociationPropertyResponse {
  /// Gets or sets the name of the credential.
  final pulumi.Input<String>? name;

  /// Creates a new [RunAsCredentialAssociationPropertyResponse].
  /// [name] Gets or sets the name of the credential.
  RunAsCredentialAssociationPropertyResponse({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory RunAsCredentialAssociationPropertyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return RunAsCredentialAssociationPropertyResponse(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
