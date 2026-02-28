// ignore_for_file: unused_element, unnecessary_cast

import 'server_binding_type_compute_beta.dart';

class ServerBindingComputeBeta {
  final ServerBindingTypeComputeBeta? type;

  /// Creates a new [ServerBindingComputeBeta].
  /// [type] Optional.
  ServerBindingComputeBeta({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
    };
  }

  factory ServerBindingComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServerBindingComputeBeta(
      type: map['type'] == null ? null : ServerBindingTypeComputeBeta.fromValue(map['type'] as String),
    );
  }
}

