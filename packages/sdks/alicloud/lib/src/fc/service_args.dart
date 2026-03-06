// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_log_config.dart';
import 'service_nas_config.dart';
import 'service_tracing_config.dart';
import 'service_vpc_config.dart';

/// {@template pulumi_fc_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_fc_service_service_args_doc}
class ServiceArgs {
  /// The Function Compute Service description.
  final pulumi.Input<String>? description;
  /// Whether to allow the Service to access Internet. Default to "true".
  final pulumi.Input<bool>? internetAccess;
  /// Provide this to store your Function Compute Service logs. Fields documented below. See [Create a Service](https://www.alibabacloud.com/help/doc-detail/51924.htm). `log_config` requires the following: (**NOTE:** If both `project` and `logstore` are empty, log_config is considered to be empty or unset.). See `log_config` below.
  final pulumi.Input<ServiceLogConfig>? logConfig;
  /// The Function Compute Service name. It is the only in one Alicloud account and is conflict with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Setting a prefix to get a only name. It is conflict with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Provide [NAS configuration](https://www.alibabacloud.com/help/doc-detail/87401.htm) to allow Function Compute Service to access your NAS resources. See `nas_config` below.
  final pulumi.Input<ServiceNasConfig>? nasConfig;
  /// Whether to publish creation/change as new Function Compute Service Version. Defaults to `false`.
  final pulumi.Input<bool>? publish;
  /// RAM role arn attached to the Function Compute Service. This governs both who / what can invoke your Function, as well as what resources our Function has access to. See [User Permissions](https://www.alibabacloud.com/help/doc-detail/52885.htm) for more details.
  final pulumi.Input<String>? role;
  /// Map for tagging resources.
  final pulumi.Input<Map<String, String>>? tags;
  /// Provide this to allow your Function Compute to report tracing information. Fields documented below. See [Function Compute Tracing Config](https://help.aliyun.com/document_detail/189805.html). `tracing_config` requires the following: (**NOTE:** If both `type` and `params` are empty, tracing_config is considered to be empty or unset.). See `tracing_config` below.
  final pulumi.Input<ServiceTracingConfig>? tracingConfig;
  /// Provide this to allow your Function Compute Service to access your VPC. Fields documented below. See [Function Compute Service in VPC](https://www.alibabacloud.com/help/faq-detail/72959.htm). `vpc_config` requires the following: (**NOTE:** If both `vswitch_ids` and `security_group_id` are empty, vpc_config is considered to be empty or unset.). See `vpc_config` below.
  final pulumi.Input<ServiceVpcConfig>? vpcConfig;

  /// Creates a new [ServiceArgs].
  /// [description] The Function Compute Service description.
  /// [internetAccess] Whether to allow the Service to access Internet. Default to "true".
  /// [logConfig] Provide this to store your Function Compute Service logs. Fields documented below. See [Create a Service](https://www.alibabacloud.com/help/doc-detail/51924.htm). `log_config` requires the following: (**NOTE:** If both `project` and `logstore` are empty, log_config is considered to be empty or unset.). See `log_config` below.
  /// [name] The Function Compute Service name. It is the only in one Alicloud account and is conflict with `name_prefix`.
  /// [namePrefix] Setting a prefix to get a only name. It is conflict with `name`.
  /// [nasConfig] Provide [NAS configuration](https://www.alibabacloud.com/help/doc-detail/87401.htm) to allow Function Compute Service to access your NAS resources. See `nas_config` below.
  /// [publish] Whether to publish creation/change as new Function Compute Service Version. Defaults to `false`.
  /// [role] RAM role arn attached to the Function Compute Service. This governs both who / what can invoke your Function, as well as what resources our Function has access to. See [User Permissions](https://www.alibabacloud.com/help/doc-detail/52885.htm) for more details.
  /// [tags] Map for tagging resources.
  /// [tracingConfig] Provide this to allow your Function Compute to report tracing information. Fields documented below. See [Function Compute Tracing Config](https://help.aliyun.com/document_detail/189805.html). `tracing_config` requires the following: (**NOTE:** If both `type` and `params` are empty, tracing_config is considered to be empty or unset.). See `tracing_config` below.
  /// [vpcConfig] Provide this to allow your Function Compute Service to access your VPC. Fields documented below. See [Function Compute Service in VPC](https://www.alibabacloud.com/help/faq-detail/72959.htm). `vpc_config` requires the following: (**NOTE:** If both `vswitch_ids` and `security_group_id` are empty, vpc_config is considered to be empty or unset.). See `vpc_config` below.
  const ServiceArgs({
    this.description,
    this.internetAccess,
    this.logConfig,
    this.name,
    this.namePrefix,
    this.nasConfig,
    this.publish,
    this.role,
    this.tags,
    this.tracingConfig,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'internetAccess': ?internetAccess,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<ServiceLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'nasConfig': ?pulumi.Input.mapOptionalInputValue<ServiceNasConfig, Map<String, dynamic>>(nasConfig, (value) => value.toMap()),
      'publish': ?publish,
      'role': ?role,
      'tags': ?tags,
      'tracingConfig': ?pulumi.Input.mapOptionalInputValue<ServiceTracingConfig, Map<String, dynamic>>(tracingConfig, (value) => value.toMap()),
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<ServiceVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetAccess: (() { final guardedValue = map['internetAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceLogConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nasConfig: (() { final guardedValue = map['nasConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceNasConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publish: (() { final guardedValue = map['publish']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tracingConfig: (() { final guardedValue = map['tracingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTracingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

