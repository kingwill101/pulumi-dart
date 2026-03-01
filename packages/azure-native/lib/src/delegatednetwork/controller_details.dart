// ignore_for_file: unused_element, unnecessary_cast


/// controller details
class ControllerDetails {
  /// controller arm resource id
  final String? id;

  /// Creates a new [ControllerDetails].
  /// [id] controller arm resource id
  ControllerDetails({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ControllerDetails.fromMap(Map<String, dynamic> map) {
    return ControllerDetails(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

