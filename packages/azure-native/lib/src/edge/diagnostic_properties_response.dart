// ignore_for_file: unused_element, unnecessary_cast


/// The properties of a Diagnostic resource.
class DiagnosticPropertiesResponse {
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [DiagnosticPropertiesResponse].
  /// [provisioningState] The status of the last operation.
  DiagnosticPropertiesResponse({
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
    };
  }

  factory DiagnosticPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DiagnosticPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
    );
  }
}

