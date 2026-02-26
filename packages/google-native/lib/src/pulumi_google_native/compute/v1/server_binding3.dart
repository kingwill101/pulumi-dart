// ignore_for_file: unused_element, unnecessary_cast

import 'server_binding_type3.dart';

class ServerBinding3 {
  final ServerBindingType3? type;

  ServerBinding3({
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

  factory ServerBinding3.fromMap(Map<String, dynamic> map) {
    return ServerBinding3(
      type: map['type'] == null
          ? null
          : ServerBindingType3.fromValue(map['type'] as String),
    );
  }
}
