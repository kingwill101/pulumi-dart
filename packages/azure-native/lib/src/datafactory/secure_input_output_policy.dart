// ignore_for_file: unused_element, unnecessary_cast


/// Execution policy for an activity that supports secure input and output.
class SecureInputOutputPolicy {
  /// When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  final bool? secureInput;
  /// When set to true, Output from activity is considered as secure and will not be logged to monitoring.
  final bool? secureOutput;

  /// Creates a new [SecureInputOutputPolicy].
  /// [secureInput] When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  /// [secureOutput] When set to true, Output from activity is considered as secure and will not be logged to monitoring.
  SecureInputOutputPolicy({
    this.secureInput,
    this.secureOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureInput': ?secureInput,
      'secureOutput': ?secureOutput,
    };
  }

  factory SecureInputOutputPolicy.fromMap(Map<String, dynamic> map) {
    return SecureInputOutputPolicy(
      secureInput: map['secureInput'] == null ? null : map['secureInput'] as bool,
      secureOutput: map['secureOutput'] == null ? null : map['secureOutput'] as bool,
    );
  }
}

