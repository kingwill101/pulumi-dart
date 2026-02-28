// ignore_for_file: unused_element, unnecessary_cast

import 'server_binding_type_compute_v1.dart';

class ServerBindingComputeV1 {
  final ServerBindingTypeComputeV1? type;

  /// Creates a new [ServerBindingComputeV1].
  /// [type] Optional.
  ServerBindingComputeV1({
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

  factory ServerBindingComputeV1.fromMap(Map<String, dynamic> map) {
    return ServerBindingComputeV1(
      type: map['type'] == null
          ? null
          : ServerBindingTypeComputeV1.fromValue(map['type'] as String),
    );
  }
}
