// ignore_for_file: unused_element, unnecessary_cast


class StorageSpacesPropertiesResponseError {
  final String? code;
  final String? message;

  /// Creates a new [StorageSpacesPropertiesResponseError].
  /// [code] Optional.
  /// [message] Optional.
  StorageSpacesPropertiesResponseError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory StorageSpacesPropertiesResponseError.fromMap(Map<String, dynamic> map) {
    return StorageSpacesPropertiesResponseError(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

