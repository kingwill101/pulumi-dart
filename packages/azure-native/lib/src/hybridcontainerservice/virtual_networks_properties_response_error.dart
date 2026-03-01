// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworksPropertiesResponseError {
  final String? code;
  final String? message;

  /// Creates a new [VirtualNetworksPropertiesResponseError].
  /// [code] Optional.
  /// [message] Optional.
  VirtualNetworksPropertiesResponseError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory VirtualNetworksPropertiesResponseError.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesResponseError(
      code: map['code'] == null ? null : map['code'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

