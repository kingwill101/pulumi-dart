// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_log_shipper_get_log_shipper_args_doc}
/// Arguments for getLogShipper.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_log_shipper_get_log_shipper_args_doc}
class GetLogShipperArgs {
  /// Setting the value to `On` to enable the service. Valid values: `On` or `Off`. Default to `Off`.
  ///
  /// &gt; **NOTE:** Setting `enable = "On"` to open the Threat Detection Log Shipper that means you have read and agreed the [Threat Detection Log Shipper Terms of Service](https://help.aliyun.com/document_detail/170157.html). The service can not closed once it is opened.
  final pulumi.Input<String>? enable;

  /// Creates a new [GetLogShipperArgs].
  /// [enable] Setting the value to `On` to enable the service. Valid values: `On` or `Off`. Default to `Off`.
  GetLogShipperArgs({this.enable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enable': ?enable};
  }

  factory GetLogShipperArgs.fromMap(Map<String, dynamic> map) {
    return GetLogShipperArgs(
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
