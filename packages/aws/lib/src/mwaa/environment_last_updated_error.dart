// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentLastUpdatedError {
  final String? errorCode;
  final String? errorMessage;

  /// Creates a new [EnvironmentLastUpdatedError].
  /// [errorCode] Optional.
  /// [errorMessage] Optional.
  EnvironmentLastUpdatedError({this.errorCode, this.errorMessage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
    };
  }

  factory EnvironmentLastUpdatedError.fromMap(Map<String, dynamic> map) {
    return EnvironmentLastUpdatedError(
      errorCode: map['errorCode'] == null ? null : map['errorCode'] as String,
      errorMessage: map['errorMessage'] == null
          ? null
          : map['errorMessage'] as String,
    );
  }
}
