// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mns_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_mns_get_service_get_service_args_doc}
class GetServiceArgs {
  /// Setting the value to `On` to enable the service. If has been enabled, return the result. Default value: `Off`. Valid values: `On` and `Off`.
  ///
  /// > **NOTE:** Setting `enable = "On"` to open the MNS service that means you have read and agreed the [MNS Terms of Service](https://help.aliyun.com/document_detail/27418.html). The service can not closed once it is opened.
  final pulumi.Input<String>? enable;

  /// Creates a new [GetServiceArgs].
  /// [enable] Setting the value to `On` to enable the service. If has been enabled, return the result. Default value: `Off`. Valid values: `On` and `Off`.
  GetServiceArgs({
    pulumi.Output<String>? enable,
  }) :
      enable = pulumi.Input.asOptionalInput<String>(enable);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      enable: map['enable'] == null ? null : pulumi.Output.create<String>(map['enable'] as String),
    );
  }
}

