// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_log_config.dart';
import 'service_nas_config.dart';
import 'service_tracing_config.dart';
import 'service_vpc_config.dart';

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// The Function Compute Service description.
  final pulumi.Input<String>? description;
  /// Whether to allow the Service to access Internet. Default to "true".
  final pulumi.Input<bool>? internetAccess;
  /// The date this resource was last modified.
  final pulumi.Input<String>? lastModified;
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
  /// The Function Compute Service ID.
  final pulumi.Input<String>? serviceId;
  /// Map for tagging resources.
  final pulumi.Input<Map<String, String>>? tags;
  /// Provide this to allow your Function Compute to report tracing information. Fields documented below. See [Function Compute Tracing Config](https://help.aliyun.com/document_detail/189805.html). `tracing_config` requires the following: (**NOTE:** If both `type` and `params` are empty, tracing_config is considered to be empty or unset.). See `tracing_config` below.
  final pulumi.Input<ServiceTracingConfig>? tracingConfig;
  /// The latest published version of your Function Compute Service.
  final pulumi.Input<String>? version;
  /// Provide this to allow your Function Compute Service to access your VPC. Fields documented below. See [Function Compute Service in VPC](https://www.alibabacloud.com/help/faq-detail/72959.htm). `vpc_config` requires the following: (**NOTE:** If both `vswitch_ids` and `security_group_id` are empty, vpc_config is considered to be empty or unset.). See `vpc_config` below.
  final pulumi.Input<ServiceVpcConfig>? vpcConfig;

  /// Creates a new [ServiceState].
  /// [description] The Function Compute Service description.
  /// [internetAccess] Whether to allow the Service to access Internet. Default to "true".
  /// [lastModified] The date this resource was last modified.
  /// [logConfig] Provide this to store your Function Compute Service logs. Fields documented below. See [Create a Service](https://www.alibabacloud.com/help/doc-detail/51924.htm). `log_config` requires the following: (**NOTE:** If both `project` and `logstore` are empty, log_config is considered to be empty or unset.). See `log_config` below.
  /// [name] The Function Compute Service name. It is the only in one Alicloud account and is conflict with `name_prefix`.
  /// [namePrefix] Setting a prefix to get a only name. It is conflict with `name`.
  /// [nasConfig] Provide [NAS configuration](https://www.alibabacloud.com/help/doc-detail/87401.htm) to allow Function Compute Service to access your NAS resources. See `nas_config` below.
  /// [publish] Whether to publish creation/change as new Function Compute Service Version. Defaults to `false`.
  /// [role] RAM role arn attached to the Function Compute Service. This governs both who / what can invoke your Function, as well as what resources our Function has access to. See [User Permissions](https://www.alibabacloud.com/help/doc-detail/52885.htm) for more details.
  /// [serviceId] The Function Compute Service ID.
  /// [tags] Map for tagging resources.
  /// [tracingConfig] Provide this to allow your Function Compute to report tracing information. Fields documented below. See [Function Compute Tracing Config](https://help.aliyun.com/document_detail/189805.html). `tracing_config` requires the following: (**NOTE:** If both `type` and `params` are empty, tracing_config is considered to be empty or unset.). See `tracing_config` below.
  /// [version] The latest published version of your Function Compute Service.
  /// [vpcConfig] Provide this to allow your Function Compute Service to access your VPC. Fields documented below. See [Function Compute Service in VPC](https://www.alibabacloud.com/help/faq-detail/72959.htm). `vpc_config` requires the following: (**NOTE:** If both `vswitch_ids` and `security_group_id` are empty, vpc_config is considered to be empty or unset.). See `vpc_config` below.
  ServiceState({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? internetAccess,
    pulumi.Output<String>? lastModified,
    pulumi.Output<ServiceLogConfig>? logConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<ServiceNasConfig>? nasConfig,
    pulumi.Output<bool>? publish,
    pulumi.Output<String>? role,
    pulumi.Output<String>? serviceId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ServiceTracingConfig>? tracingConfig,
    pulumi.Output<String>? version,
    pulumi.Output<ServiceVpcConfig>? vpcConfig,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      internetAccess = pulumi.Input.asOptionalInput<bool>(internetAccess),
      lastModified = pulumi.Input.asOptionalInput<String>(lastModified),
      logConfig = pulumi.Input.asOptionalInput<ServiceLogConfig>(logConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      nasConfig = pulumi.Input.asOptionalInput<ServiceNasConfig>(nasConfig),
      publish = pulumi.Input.asOptionalInput<bool>(publish),
      role = pulumi.Input.asOptionalInput<String>(role),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tracingConfig = pulumi.Input.asOptionalInput<ServiceTracingConfig>(tracingConfig),
      version = pulumi.Input.asOptionalInput<String>(version),
      vpcConfig = pulumi.Input.asOptionalInput<ServiceVpcConfig>(vpcConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'internetAccess': ?internetAccess,
      'lastModified': ?lastModified,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<ServiceLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'nasConfig': ?pulumi.Input.mapOptionalInputValue<ServiceNasConfig, Map<String, dynamic>>(nasConfig, (value) => value.toMap()),
      'publish': ?publish,
      'role': ?role,
      'serviceId': ?serviceId,
      'tags': ?tags,
      'tracingConfig': ?pulumi.Input.mapOptionalInputValue<ServiceTracingConfig, Map<String, dynamic>>(tracingConfig, (value) => value.toMap()),
      'version': ?version,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<ServiceVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      internetAccess: map['internetAccess'] == null ? null : pulumi.Output.create<bool>(map['internetAccess'] as bool),
      lastModified: map['lastModified'] == null ? null : pulumi.Output.create<String>(map['lastModified'] as String),
      logConfig: map['logConfig'] == null ? null : pulumi.Output.create<ServiceLogConfig>(ServiceLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      nasConfig: map['nasConfig'] == null ? null : pulumi.Output.create<ServiceNasConfig>(ServiceNasConfig.fromMap((map['nasConfig'] as Map).cast<String, dynamic>())),
      publish: map['publish'] == null ? null : pulumi.Output.create<bool>(map['publish'] as bool),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tracingConfig: map['tracingConfig'] == null ? null : pulumi.Output.create<ServiceTracingConfig>(ServiceTracingConfig.fromMap((map['tracingConfig'] as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      vpcConfig: map['vpcConfig'] == null ? null : pulumi.Output.create<ServiceVpcConfig>(ServiceVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

