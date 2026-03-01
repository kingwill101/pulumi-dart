// ignore_for_file: unused_element, unnecessary_cast


/// N-Cross validations determined automatically.
class AutoNCrossValidations {
  /// Determines how N-Cross validations value is determined.
  /// Expected value is 'Auto'.
  final String mode;

  /// Creates a new [AutoNCrossValidations].
  /// [mode] Determines how N-Cross validations value is determined.
  AutoNCrossValidations({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory AutoNCrossValidations.fromMap(Map<String, dynamic> map) {
    return AutoNCrossValidations(
      mode: map['mode'] as String,
    );
  }
}

