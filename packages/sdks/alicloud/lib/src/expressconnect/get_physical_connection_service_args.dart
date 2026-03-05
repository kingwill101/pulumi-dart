// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_get_physical_connection_service_get_physical_connection_service_args_doc}
/// Arguments for getPhysicalConnectionService.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_get_physical_connection_service_get_physical_connection_service_args_doc}
class GetPhysicalConnectionServiceArgs {
  /// Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  ///
  /// &gt; **NOTE:** Setting `enable = "On"` to enable outbound traffic for an Express Connect circuit that means you have read and agreed the [Express Connect Terms of Service](https://terms.aliyun.com/legal-agreement/terms/suit_bu1_ali_cloud/suit_bu1_ali_cloud201803060947_16271.html). The service can not closed once it is opened.
  final pulumi.Input<String>? enable;

  /// Creates a new [GetPhysicalConnectionServiceArgs].
  /// [enable] Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  GetPhysicalConnectionServiceArgs({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory GetPhysicalConnectionServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetPhysicalConnectionServiceArgs(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

