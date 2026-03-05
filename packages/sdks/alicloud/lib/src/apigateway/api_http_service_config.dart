// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiHttpServiceConfig {
  /// The address of backend service.
  final pulumi.Input<String> address;
  /// The name of aone.
  final pulumi.Input<String>? aoneName;
  /// The content type category of backend service which supports values of 'DEFAULT','CUSTOM' and 'CLIENT'.
  final pulumi.Input<String>? contentTypeCategory;
  /// The content type value of backend service.
  final pulumi.Input<String>? contentTypeValue;
  /// The http method of backend service.
  final pulumi.Input<String> method;
  /// The path of backend service.
  final pulumi.Input<String> path;
  /// Backend service time-out time; unit: millisecond.
  final pulumi.Input<int> timeout;

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
      address: pulumi.Input.fromValue(map['address'] as String),
      aoneName: (() { final guardedValue = map['aoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentTypeCategory: (() { final guardedValue = map['contentTypeCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentTypeValue: (() { final guardedValue = map['contentTypeValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: pulumi.Input.fromValue(map['method'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      timeout: pulumi.Input.fromValue(map['timeout'] as int),
    );
  }
}

