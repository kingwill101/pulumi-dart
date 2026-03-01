// ignore_for_file: unused_element, unnecessary_cast


/// Container App to be a dev service
class Service {
  /// Dev ContainerApp service type
  final String type;

  /// Creates a new [Service].
  /// [type] Dev ContainerApp service type
  Service({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory Service.fromMap(Map<String, dynamic> map) {
    return Service(
      type: map['type'] as String,
    );
  }
}

