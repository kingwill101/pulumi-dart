// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_configuration_recorder_configuration_recorder_args_doc}
/// The set of arguments for ConfigurationRecorder.
/// {@endtemplate}
/// {@macro pulumi_cfg_configuration_recorder_configuration_recorder_args_doc}
class ConfigurationRecorderArgs {
  /// Whether to use the enterprise version configuration audit. Valid values: `true` and `false`. Default value `false`. For enterprise accounts, We recommend you to use the resource alicloud_config_aggregator.
  final pulumi.Input<bool>? enterpriseEdition;
  /// A list of resource types to be monitored. [Resource types that support Cloud Config.](https://www.alibabacloud.com/help/en/doc-detail/127411.htm)
  /// * If you use an ordinary account, the `resource_types` supports the update operation after the process of creation is completed.
  /// * If you use an enterprise account, the `resource_types` does not support updating.
  final pulumi.Input<List<String>>? resourceTypes;

  /// Creates a new [ConfigurationRecorderArgs].
  /// [enterpriseEdition] Whether to use the enterprise version configuration audit. Valid values: `true` and `false`. Default value `false`. For enterprise accounts, We recommend you to use the resource alicloud_config_aggregator.
  /// [resourceTypes] A list of resource types to be monitored. [Resource types that support Cloud Config.](https://www.alibabacloud.com/help/en/doc-detail/127411.htm)
  const ConfigurationRecorderArgs({
    this.enterpriseEdition,
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enterpriseEdition': ?enterpriseEdition,
      'resourceTypes': ?resourceTypes,
    };
  }

  factory ConfigurationRecorderArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationRecorderArgs(
      enterpriseEdition: (() { final guardedValue = map['enterpriseEdition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

