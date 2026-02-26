// ignore_for_file: unused_element, unnecessary_cast

import 'server_binding_type2.dart';

class ServerBinding2 {
  final ServerBindingType2? type;

  ServerBinding2({
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

  factory ServerBinding2.fromMap(Map<String, dynamic> map) {
    return ServerBinding2(
      type: map['type'] == null
          ? null
          : ServerBindingType2.fromValue(map['type'] as String),
    );
  }
}
