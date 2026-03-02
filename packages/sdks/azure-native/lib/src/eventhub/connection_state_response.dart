// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ConnectionState information.
class ConnectionStateResponse {
  /// Description of the connection state.
  final pulumi.Input<String>? description;
  /// Status of the connection.
  final pulumi.Input<String>? status;

  /// Creates a new [ConnectionStateResponse].
  /// [description] Description of the connection state.
  /// [status] Status of the connection.
  ConnectionStateResponse({
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'status': ?status,
    };
  }

  factory ConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionStateResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

