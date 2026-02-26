// ignore_for_file: unused_element, unnecessary_cast

class ServerBindingResponse {
  final String type;

  ServerBindingResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory ServerBindingResponse.fromMap(Map<String, dynamic> map) {
    return ServerBindingResponse(
      type: map['type'] as String,
    );
  }
}
