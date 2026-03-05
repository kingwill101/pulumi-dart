// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_flow_log_service_get_flow_log_service_args_doc}
/// Arguments for getFlowLogService.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_flow_log_service_get_flow_log_service_args_doc}
class GetFlowLogServiceArgs {
  /// Setting the value to `On` to enable the service. If has been enabled, return the result. Default value: `Off`. Valid values: `On` and `Off`.
  ///
  /// &gt; **NOTE:** Setting `enable = "On"` to open the Vpc Flow Log service that means you have read and agreed the [Vpc Flow Log Terms of Service](https://help.aliyun.com/zh/vpc/support/vpc-terms-of-service). The service can not closed once it is opened.
  final pulumi.Input<String>? enable;

  /// Creates a new [GetFlowLogServiceArgs].
  /// [enable] Setting the value to `On` to enable the service. If has been enabled, return the result. Default value: `Off`. Valid values: `On` and `Off`.
  GetFlowLogServiceArgs({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory GetFlowLogServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowLogServiceArgs(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

