// ignore_for_file: unused_element, unnecessary_cast


/// A wrapper for an ARM resource id
class ArmIdWrapperResponse {
  final String id;

  /// Creates a new [ArmIdWrapperResponse].
  /// [id] Required.
  ArmIdWrapperResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ArmIdWrapperResponse.fromMap(Map<String, dynamic> map) {
    return ArmIdWrapperResponse(
      id: map['id'] as String,
    );
  }
}

