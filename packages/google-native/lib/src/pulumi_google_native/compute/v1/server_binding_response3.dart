// ignore_for_file: unused_element, unnecessary_cast

class ServerBindingResponse3 {
  final String type;

  ServerBindingResponse3({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory ServerBindingResponse3.fromMap(Map<String, dynamic> map) {
    return ServerBindingResponse3(
      type: map['type'] as String,
    );
  }
}
