// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_traffic_mirror_service_get_traffic_mirror_service_args_doc}
/// Arguments for getTrafficMirrorService.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_traffic_mirror_service_get_traffic_mirror_service_args_doc}
class GetTrafficMirrorServiceArgs {
  /// Setting the value to `On` to enable the service. If has been enabled, return the result. Default value: `Off`. Valid values: `On` and `Off`.
  ///
  /// > **NOTE:** Setting `enable = "On"` to open the VPC Traffic Mirror service that means you have read and agreed the [VPC Traffic Mirror Terms of Service](https://help.aliyun.com/zh/vpc/support/vpc-terms-of-service). The service can not closed once it is opened.
  final pulumi.Input<String>? enable;

  /// Creates a new [GetTrafficMirrorServiceArgs].
  /// [enable] Setting the value to `On` to enable the service. If has been enabled, return the result. Default value: `Off`. Valid values: `On` and `Off`.
  GetTrafficMirrorServiceArgs({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory GetTrafficMirrorServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetTrafficMirrorServiceArgs(
      enable: map['enable'] == null ? null : (map['enable']! as String).input(),
    );
  }
}

