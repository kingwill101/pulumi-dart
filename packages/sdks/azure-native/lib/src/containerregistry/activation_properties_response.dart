// ignore_for_file: unused_element, unnecessary_cast


/// The activation properties of the connected registry.
class ActivationPropertiesResponse {
  /// The activation status of the connected registry.
  final String status;

  /// Creates a new [ActivationPropertiesResponse].
  /// [status] The activation status of the connected registry.
  ActivationPropertiesResponse({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory ActivationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ActivationPropertiesResponse(
      status: map['status'] as String,
    );
  }
}

