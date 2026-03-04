// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cdn_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_cdn_get_service_get_service_args_doc}
class GetServiceArgs {
  /// Setting the value to `On` to enable the service. If has been enabled, return the result. Default value: `Off`. Valid values: `On`, `Off`.
  final pulumi.Input<String>? enable;

  /// The new billing method. Valid values: `PayByTraffic` and `PayByBandwidth`. Default value: `PayByTraffic`.
  /// It is required when `enable = on`. If the CDN service has been opened and you can update its internet charge type by modifying the filed `internet_charge_type`.
  /// As a note, the updated internet charge type will be effective in the next day zero time.
  ///
  /// &gt; **NOTE:** Setting `enable = "On"` to open the CDN service that means you have read and agreed the [CDN Terms of Service](https://help.aliyun.com/document_detail/27110.html). The service can not closed once it is opened.
  final pulumi.Input<String>? internetChargeType;

  /// Creates a new [GetServiceArgs].
  /// [enable] Setting the value to `On` to enable the service. If has been enabled, return the result. Default value: `Off`. Valid values: `On`, `Off`.
  /// [internetChargeType] The new billing method. Valid values: `PayByTraffic` and `PayByBandwidth`. Default value: `PayByTraffic`.
  GetServiceArgs({this.enable, this.internetChargeType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'internetChargeType': ?internetChargeType,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internetChargeType: (() {
        final guardedValue = map['internetChargeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
