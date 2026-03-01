// ignore_for_file: unused_element, unnecessary_cast


class ProvisionedClustersCommonPropertiesResponseError {
  final String? code;
  final String? message;

  /// Creates a new [ProvisionedClustersCommonPropertiesResponseError].
  /// [code] Optional.
  /// [message] Optional.
  ProvisionedClustersCommonPropertiesResponseError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory ProvisionedClustersCommonPropertiesResponseError.fromMap(Map<String, dynamic> map) {
    return ProvisionedClustersCommonPropertiesResponseError(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

