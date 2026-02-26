// ignore_for_file: unused_element, unnecessary_cast

import 'server_binding_type.dart';

class ServerBinding {
  final ServerBindingType? type;

  ServerBinding({
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

  factory ServerBinding.fromMap(Map<String, dynamic> map) {
    return ServerBinding(
      type: map['type'] == null
          ? null
          : ServerBindingType.fromValue(map['type'] as String),
    );
  }
}
