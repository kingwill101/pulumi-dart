// ignore_for_file: unused_element, unnecessary_cast


/// controller details
class ControllerDetailsResponse {
  /// controller arm resource id
  final String? id;

  /// Creates a new [ControllerDetailsResponse].
  /// [id] controller arm resource id
  ControllerDetailsResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ControllerDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ControllerDetailsResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

