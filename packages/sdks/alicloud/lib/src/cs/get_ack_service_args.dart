// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_ack_service_get_ack_service_args_doc}
/// Arguments for getAckService.
/// {@endtemplate}
/// {@macro pulumi_cs_get_ack_service_get_ack_service_args_doc}
class GetAckServiceArgs {
  /// Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  final pulumi.Input<String>? enable;
  /// Types of services opened. Valid values: `propayasgo`: Container service ack Pro managed version, `edgepayasgo`: Edge container service, `gspayasgo`: Gene computing services.
  ///
  /// > **NOTE:** Setting `enable = "On"` to open the Container Service (CS) service that means you have read and agreed the [Container Service (CS) Terms of Service](https://help.aliyun.com/document_detail/157971.html). The service can not closed once it is opened.
  final pulumi.Input<String> type;

  /// Creates a new [GetAckServiceArgs].
  /// [enable] Setting the value to `On` to enable the service. If has been enabled, return the result. Valid values: `On` or `Off`. Default to `Off`.
  /// [type] Types of services opened. Valid values: `propayasgo`: Container service ack Pro managed version, `edgepayasgo`: Edge container service, `gspayasgo`: Gene computing services.
  GetAckServiceArgs({
    pulumi.Output<String>? enable,
    required pulumi.Output<String> type,
  }) :
      enable = pulumi.Input.asOptionalInput<String>(enable),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'type': type,
    };
  }

  factory GetAckServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetAckServiceArgs(
      enable: map['enable'] == null ? null : pulumi.Output.create<String>(map['enable'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

