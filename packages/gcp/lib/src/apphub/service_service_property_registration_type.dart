// ignore_for_file: unused_element, unnecessary_cast


class ServiceServicePropertyRegistrationType {
  /// (Output)
  /// Output only. The registration type of a service.
  final String? type;

  /// Creates a new [ServiceServicePropertyRegistrationType].
  /// [type] (Output)
  ServiceServicePropertyRegistrationType({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ServiceServicePropertyRegistrationType.fromMap(Map<String, dynamic> map) {
    return ServiceServicePropertyRegistrationType(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

