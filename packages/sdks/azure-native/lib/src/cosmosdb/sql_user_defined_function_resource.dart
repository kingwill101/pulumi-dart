// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cosmos DB SQL userDefinedFunction resource object
class SqlUserDefinedFunctionResource {
  /// Body of the User Defined Function
  final pulumi.Input<String>? body;

  /// Name of the Cosmos DB SQL userDefinedFunction
  final pulumi.Input<String> id;

  /// Creates a new [SqlUserDefinedFunctionResource].
  /// [body] Body of the User Defined Function
  /// [id] Name of the Cosmos DB SQL userDefinedFunction
  SqlUserDefinedFunctionResource({this.body, required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'body': ?body, 'id': id};
  }

  factory SqlUserDefinedFunctionResource.fromMap(Map<String, dynamic> map) {
    return SqlUserDefinedFunctionResource(
      body: (() {
        final guardedValue = map['body'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
