// ignore_for_file: unused_element, unnecessary_cast

class ServerBindingResponseComputeV1 {
  final String type;

  ServerBindingResponseComputeV1({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory ServerBindingResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ServerBindingResponseComputeV1(
      type: map['type'] as String,
    );
  }
}
