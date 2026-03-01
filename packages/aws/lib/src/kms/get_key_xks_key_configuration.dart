// ignore_for_file: unused_element, unnecessary_cast


class GetKeyXksKeyConfiguration {
  /// The globally unique identifier for the key
  final String id;

  /// Creates a new [GetKeyXksKeyConfiguration].
  /// [id] The globally unique identifier for the key
  GetKeyXksKeyConfiguration({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetKeyXksKeyConfiguration.fromMap(Map<String, dynamic> map) {
    return GetKeyXksKeyConfiguration(
      id: map['id'] as String,
    );
  }
}

