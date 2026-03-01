// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_service_get_transit_router_service_args_doc}
/// Arguments for getTransitRouterService.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_service_get_transit_router_service_args_doc}
class GetTransitRouterServiceArgs {
  /// Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  ///
  /// > **NOTE:** Setting `enable = "On"` to open the CEN Transit Router Service that means you have read and agreed the [CEN Terms of Service](https://help.aliyun.com/document_detail/66667.html). The service can not closed once it is opened.
  final pulumi.Input<String>? enable;

  /// Creates a new [GetTransitRouterServiceArgs].
  /// [enable] Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  GetTransitRouterServiceArgs({
    String? enable,
  }) :
      enable = pulumi.Input.asOptionalInput<String>(enable);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory GetTransitRouterServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterServiceArgs(
      enable: map['enable'] == null ? null : map['enable'] as String,
    );
  }
}

