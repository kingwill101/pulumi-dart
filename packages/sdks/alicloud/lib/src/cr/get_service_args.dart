// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_cr_get_service_get_service_args_doc}
class GetServiceArgs {
  /// Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  final pulumi.Input<String>? enable;
  /// The user password. The password must be 8 to 32 characters in length, and must contain at least two of the following character types: letters, special characters, and digits.
  ///
  /// &gt; **NOTE:** Setting `enable = "On"` to open the Container Registry (CR) service that means you have read and agreed the [Container Registry (CR) Terms of Service](https://help.aliyun.com/document_detail/190602.html). The service can not closed once it is opened.
  final pulumi.Input<String> password;

  /// Creates a new [GetServiceArgs].
  /// [enable] Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  /// [password] The user password. The password must be 8 to 32 characters in length, and must contain at least two of the following character types: letters, special characters, and digits.
  GetServiceArgs({
    this.enable,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'password': password,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: pulumi.Input.fromValue(map['password'] as String),
    );
  }
}

