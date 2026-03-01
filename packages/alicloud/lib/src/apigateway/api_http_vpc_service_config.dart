// ignore_for_file: unused_element, unnecessary_cast


class ApiHttpVpcServiceConfig {
  /// The name of aone.
  final String? aoneName;
  /// The content type category of backend service which supports values of 'DEFAULT','CUSTOM' and 'CLIENT'.
  final String? contentTypeCategory;
  /// The content type value of backend service.
  final String? contentTypeValue;
  /// The http method of backend service.
  final String method;
  /// The name of vpc instance.
  final String name;
  /// The path of backend service.
  final String path;
  /// Backend service time-out time. Unit: millisecond.
  final int timeout;
  /// The vpc scheme of backend service which supports values of `HTTP` and `HTTPS`.
  final String? vpcScheme;

  /// Creates a new [ApiHttpVpcServiceConfig].
  /// [aoneName] The name of aone.
  /// [contentTypeCategory] The content type category of backend service which supports values of 'DEFAULT','CUSTOM' and 'CLIENT'.
  /// [contentTypeValue] The content type value of backend service.
  /// [method] The http method of backend service.
  /// [name] The name of vpc instance.
  /// [path] The path of backend service.
  /// [timeout] Backend service time-out time. Unit: millisecond.
  /// [vpcScheme] The vpc scheme of backend service which supports values of `HTTP` and `HTTPS`.
  ApiHttpVpcServiceConfig({
    this.aoneName,
    this.contentTypeCategory,
    this.contentTypeValue,
    required this.method,
    required this.name,
    required this.path,
    required this.timeout,
    this.vpcScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aoneName': ?aoneName,
      'contentTypeCategory': ?contentTypeCategory,
      'contentTypeValue': ?contentTypeValue,
      'method': method,
      'name': name,
      'path': path,
      'timeout': timeout,
      'vpcScheme': ?vpcScheme,
    };
  }

  factory ApiHttpVpcServiceConfig.fromMap(Map<String, dynamic> map) {
    return ApiHttpVpcServiceConfig(
      aoneName: map['aoneName'] == null ? null : map['aoneName'] as String,
      contentTypeCategory: map['contentTypeCategory'] == null ? null : map['contentTypeCategory'] as String,
      contentTypeValue: map['contentTypeValue'] == null ? null : map['contentTypeValue'] as String,
      method: map['method'] as String,
      name: map['name'] as String,
      path: map['path'] as String,
      timeout: map['timeout'] as int,
      vpcScheme: map['vpcScheme'] == null ? null : map['vpcScheme'] as String,
    );
  }
}

