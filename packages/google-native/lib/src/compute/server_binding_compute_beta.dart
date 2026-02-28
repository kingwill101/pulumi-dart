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
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory ServerBindingComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServerBindingComputeBeta(
      type: map['type'] == null
          ? null
          : ServerBindingTypeComputeBeta.fromValue(map['type'] as String),
    );
  }
}
