// ignore_for_file: unused_element, unnecessary_cast

class ServerBindingResponseComputeBeta {
  final String type;

  /// Creates a new [ServerBindingResponseComputeBeta].
  /// [type] Required.
  ServerBindingResponseComputeBeta({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory ServerBindingResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ServerBindingResponseComputeBeta(
      type: map['type'] as String,
    );
  }
}
