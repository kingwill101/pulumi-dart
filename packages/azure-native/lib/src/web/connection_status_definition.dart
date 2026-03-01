// ignore_for_file: unused_element, unnecessary_cast

import 'connection_error.dart';

/// Connection status
class ConnectionStatusDefinition {
  /// Connection error
  final ConnectionError? error;
  /// The gateway status
  final String? status;
  /// Target of the error
  final String? target;

  /// Creates a new [ConnectionStatusDefinition].
  /// [error] Connection error
  /// [status] The gateway status
  /// [target] Target of the error
  ConnectionStatusDefinition({
    this.error,
    this.status,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error == null ? null : error!.toMap(),
      'status': ?status,
      'target': ?target,
    };
  }

  factory ConnectionStatusDefinition.fromMap(Map<String, dynamic> map) {
    return ConnectionStatusDefinition(
      error: map['error'] == null ? null : ConnectionError.fromMap((map['error'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

