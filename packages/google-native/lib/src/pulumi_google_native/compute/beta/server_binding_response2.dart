// ignore_for_file: unused_element, unnecessary_cast

class ServerBindingResponse2 {
  final String type;

  ServerBindingResponse2({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory ServerBindingResponse2.fromMap(Map<String, dynamic> map) {
    return ServerBindingResponse2(
      type: map['type'] as String,
    );
  }
}
