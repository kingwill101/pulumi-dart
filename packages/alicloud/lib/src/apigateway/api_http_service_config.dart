// ignore_for_file: unused_element, unnecessary_cast


class ApiHttpServiceConfig {
  /// The address of backend service.
  final String address;
  /// The name of aone.
  final String? aoneName;
  /// The content type category of backend service which supports values of 'DEFAULT','CUSTOM' and 'CLIENT'.
  final String? contentTypeCategory;
  /// The content type value of backend service.
  final String? contentTypeValue;
  /// The http method of backend service.
  final String method;
  /// The path of backend service.
  final String path;
  /// Backend service time-out time; unit: millisecond.
  final int timeout;

  /// Creates a new [ApiHttpServiceConfig].
  /// [address] The address of backend service.
  /// [aoneName] The name of aone.
  /// [contentTypeCategory] The content type category of backend service which supports values of 'DEFAULT','CUSTOM' and 'CLIENT'.
  /// [contentTypeValue] The content type value of backend service.
  /// [method] The http method of backend service.
  /// [path] The path of backend service.
  /// [timeout] Backend service time-out time; unit: millisecond.
  ApiHttpServiceConfig({
    required this.address,
    this.aoneName,
    this.contentTypeCategory,
    this.contentTypeValue,
    required this.method,
    required this.path,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'aoneName': ?aoneName,
      'contentTypeCategory': ?contentTypeCategory,
      'contentTypeValue': ?contentTypeValue,
      'method': method,
      'path': path,
      'timeout': timeout,
    };
  }

  factory ApiHttpServiceConfig.fromMap(Map<String, dynamic> map) {
    return ApiHttpServiceConfig(
      address: map['address'] as String,
      aoneName: map['aoneName'] == null ? null : map['aoneName'] as String,
      contentTypeCategory: map['contentTypeCategory'] == null ? null : map['contentTypeCategory'] as String,
      contentTypeValue: map['contentTypeValue'] == null ? null : map['contentTypeValue'] as String,
      method: map['method'] as String,
      path: map['path'] as String,
      timeout: map['timeout'] as int,
    );
  }
}

