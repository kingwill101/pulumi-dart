// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Source or target connection reference details.
class MapperConnectionReference {
  /// Name of the connection
  final pulumi.Input<String>? connectionName;

  /// Type of connection via linked service or dataset.
  final pulumi.Input<String>? type;

  /// Creates a new [MapperConnectionReference].
  /// [connectionName] Name of the connection
  /// [type] Type of connection via linked service or dataset.
  MapperConnectionReference({this.connectionName, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'connectionName': ?connectionName, 'type': ?type};
  }

  factory MapperConnectionReference.fromMap(Map<String, dynamic> map) {
    return MapperConnectionReference(
      connectionName: (() {
        final guardedValue = map['connectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
