// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiHttpVpcServiceConfig {
  /// The name of aone.
  final pulumi.Input<String>? aoneName;

  /// The content type category of backend service which supports values of 'DEFAULT','CUSTOM' and 'CLIENT'.
  final pulumi.Input<String>? contentTypeCategory;

  /// The content type value of backend service.
  final pulumi.Input<String>? contentTypeValue;

  /// The http method of backend service.
  final pulumi.Input<String> method;

  /// The name of vpc instance.
  final pulumi.Input<String> name;

  /// The path of backend service.
  final pulumi.Input<String> path;

  /// Backend service time-out time. Unit: millisecond.
  final pulumi.Input<int> timeout;

  /// The vpc scheme of backend service which supports values of `HTTP` and `HTTPS`.
  final pulumi.Input<String>? vpcScheme;

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
      aoneName: (() {
        final guardedValue = map['aoneName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contentTypeCategory: (() {
        final guardedValue = map['contentTypeCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      contentTypeValue: (() {
        final guardedValue = map['contentTypeValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      method: pulumi.Input.fromValue(map['method'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      timeout: pulumi.Input.fromValue(map['timeout'] as int),
      vpcScheme: (() {
        final guardedValue = map['vpcScheme'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
