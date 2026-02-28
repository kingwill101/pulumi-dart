// ignore_for_file: unused_element, unnecessary_cast


class ServiceServicePropertyFunctionalType {
  /// (Output)
  /// Output only. The registration type of a service.
  final String? type;

  /// Creates a new [ServiceServicePropertyFunctionalType].
  /// [type] (Output)
  ServiceServicePropertyFunctionalType({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ServiceServicePropertyFunctionalType.fromMap(Map<String, dynamic> map) {
    return ServiceServicePropertyFunctionalType(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

