// ignore_for_file: unused_element, unnecessary_cast


/// N-Cross validations determined automatically.
class AutoNCrossValidationsResponse {
  /// Determines how N-Cross validations value is determined.
  /// Expected value is 'Auto'.
  final String mode;

  /// Creates a new [AutoNCrossValidationsResponse].
  /// [mode] Determines how N-Cross validations value is determined.
  AutoNCrossValidationsResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoNCrossValidationsResponse.fromMap(Map<String, dynamic> map) {
    return AutoNCrossValidationsResponse(
      mode: map['mode'] as String,
    );
  }
}

