// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInPrincipal {
  final pulumi.Input<String> dataLakePrincipalIdentifier;

  /// Creates a new [OptInPrincipal].
  /// [dataLakePrincipalIdentifier] Required.
  const OptInPrincipal({
    required this.dataLakePrincipalIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakePrincipalIdentifier': dataLakePrincipalIdentifier,
    };
  }

  factory OptInPrincipal.fromMap(Map<String, dynamic> map) {
    return OptInPrincipal(
      dataLakePrincipalIdentifier: pulumi.Input.fromValue(map['dataLakePrincipalIdentifier'] as String),
    );
  }
}

