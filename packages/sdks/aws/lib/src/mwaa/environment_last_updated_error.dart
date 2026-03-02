// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentLastUpdatedError {
  final pulumi.Input<String>? errorCode;
  final pulumi.Input<String>? errorMessage;

  /// Creates a new [EnvironmentLastUpdatedError].
  /// [errorCode] Optional.
  /// [errorMessage] Optional.
  EnvironmentLastUpdatedError({
    this.errorCode,
    this.errorMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
    };
  }

  factory EnvironmentLastUpdatedError.fromMap(Map<String, dynamic> map) {
    return EnvironmentLastUpdatedError(
      errorCode: map['errorCode'] == null ? null : (map['errorCode'] as String).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
    );
  }
}

