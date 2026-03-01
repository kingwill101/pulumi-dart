// ignore_for_file: unused_element, unnecessary_cast


class NetworkMtu {
  /// Defines the specific size of the MTU for network communication.
  final double size;

  /// Creates a new [NetworkMtu].
  /// [size] Defines the specific size of the MTU for network communication.
  NetworkMtu({
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size': size,
    };
  }

  factory NetworkMtu.fromMap(Map<String, dynamic> map) {
    return NetworkMtu(
      size: map['size'] as double,
    );
  }
}

