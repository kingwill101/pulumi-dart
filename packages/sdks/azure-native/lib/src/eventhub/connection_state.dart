// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ConnectionState information.
class ConnectionState {
  /// Description of the connection state.
  final pulumi.Input<String>? description;

  /// Status of the connection.
  final pulumi.Input<String>? status;

  /// Creates a new [ConnectionState].
  /// [description] Description of the connection state.
  /// [status] Status of the connection.
  ConnectionState({this.description, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': ?description, 'status': ?status};
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
