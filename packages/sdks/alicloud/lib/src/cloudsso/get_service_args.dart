// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_get_service_get_service_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_get_service_get_service_args_doc}
class GetServiceArgs {
  /// Setting the value to `On` to enable the service. Valid values: `On` or `Off`.
  ///
  /// &gt; **NOTE:** Setting `enable = "On"` to open the Cloud Sso service that means you have read and agreed the [Cloud Sso Terms of Service](https://help.aliyun.com/document_detail/299998.html). When there is no directory in Cloud SSO, you can set `enable = "Off"` to turn off Cloud SSO as needed. After it is closed, you can also open it at any time.
  final pulumi.Input<String> enable;

  /// Creates a new [GetServiceArgs].
  /// [enable] Setting the value to `On` to enable the service. Valid values: `On` or `Off`.
  const GetServiceArgs({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
    };
  }

  factory GetServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceArgs(
      enable: pulumi.Input.fromValue(map['enable'] as String),
    );
  }
}

