// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rocketmq_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_rocketmq_get_service_get_service_args_doc}
class GetServiceArgs {
  /// Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  ///
  /// > **NOTE:** Setting `enable = "On"` to open the ONS service that means you have read and agreed the [ONS Terms of Service](https://help.aliyun.com/document_detail/39113.html). The service can not closed once it is opened.
  final pulumi.Input<String>? enable;

  /// Creates a new [GetServiceArgs].
  /// [enable] Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  GetServiceArgs({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      enable: map['enable'] == null ? null : (map['enable']! as String).input(),
    );
  }
}

