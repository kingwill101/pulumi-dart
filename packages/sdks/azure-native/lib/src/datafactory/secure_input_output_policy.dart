// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Execution policy for an activity that supports secure input and output.
class SecureInputOutputPolicy {
  /// When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  final pulumi.Input<bool>? secureInput;

  /// When set to true, Output from activity is considered as secure and will not be logged to monitoring.
  final pulumi.Input<bool>? secureOutput;

  /// Creates a new [SecureInputOutputPolicy].
  /// [secureInput] When set to true, Input from activity is considered as secure and will not be logged to monitoring.
  /// [secureOutput] When set to true, Output from activity is considered as secure and will not be logged to monitoring.
  SecureInputOutputPolicy({this.secureInput, this.secureOutput});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secureInput': ?secureInput,
      'secureOutput': ?secureOutput,
    };
  }

  factory SecureInputOutputPolicy.fromMap(Map<String, dynamic> map) {
    return SecureInputOutputPolicy(
      secureInput: (() {
        final guardedValue = map['secureInput'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      secureOutput: (() {
        final guardedValue = map['secureOutput'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
