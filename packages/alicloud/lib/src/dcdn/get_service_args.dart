// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dcdn_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_dcdn_get_service_get_service_args_doc}
class GetServiceArgs {
  /// Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  ///
  /// > **NOTE:** Setting `enable = "On"` to open the DCDN service that means you have read and agreed the [DCDN Terms of Service](https://help.aliyun.com/document_detail/169354.html). The service can not closed once it is opened.
  final pulumi.Input<String>? enable;

  /// Creates a new [GetServiceArgs].
  /// [enable] Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  GetServiceArgs({
    String? enable,
  }) :
      enable = pulumi.Input.asOptionalInput<String>(enable);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      enable: map['enable'] == null ? null : map['enable'] as String,
    );
  }
}

