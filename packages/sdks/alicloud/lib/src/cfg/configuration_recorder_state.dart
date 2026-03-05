// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConfigurationRecorder resources.
class ConfigurationRecorderState {
  /// Whether to use the enterprise version configuration audit. Valid values: `true` and `false`. Default value `false`. For enterprise accounts, We recommend you to use the resource alicloud_config_aggregator.
  final pulumi.Input<bool>? enterpriseEdition;
  /// Enterprise version configuration audit enabled status. Values: `REGISTRABLE`: Not enabled, `BUILDING`: Building and `REGISTERED`: Enabled.
  final pulumi.Input<String>? organizationEnableStatus;
  /// The ID of the Enterprise management account.
  final pulumi.Input<int>? organizationMasterId;
  /// A list of resource types to be monitored. [Resource types that support Cloud Config.](https://www.alibabacloud.com/help/en/doc-detail/127411.htm)
  /// * If you use an ordinary account, the `resource_types` supports the update operation after the process of creation is completed.
  /// * If you use an enterprise account, the `resource_types` does not support updating.
  final pulumi.Input<List<String>>? resourceTypes;
  /// Status of resource monitoring. Values: `REGISTRABLE`: Not registered, `BUILDING`: Under construction, `REGISTERED`: Registered and `REBUILDING`: Rebuilding.
  final pulumi.Input<String>? status;

  /// Creates a new [ConfigurationRecorderState].
  /// [enterpriseEdition] Whether to use the enterprise version configuration audit. Valid values: `true` and `false`. Default value `false`. For enterprise accounts, We recommend you to use the resource alicloud_config_aggregator.
  /// [organizationEnableStatus] Enterprise version configuration audit enabled status. Values: `REGISTRABLE`: Not enabled, `BUILDING`: Building and `REGISTERED`: Enabled.
  /// [organizationMasterId] The ID of the Enterprise management account.
  /// [resourceTypes] A list of resource types to be monitored. [Resource types that support Cloud Config.](https://www.alibabacloud.com/help/en/doc-detail/127411.htm)
  /// [status] Status of resource monitoring. Values: `REGISTRABLE`: Not registered, `BUILDING`: Under construction, `REGISTERED`: Registered and `REBUILDING`: Rebuilding.
  ConfigurationRecorderState({
    this.enterpriseEdition,
    this.organizationEnableStatus,
    this.organizationMasterId,
    this.resourceTypes,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enterpriseEdition': ?enterpriseEdition,
      'organizationEnableStatus': ?organizationEnableStatus,
      'organizationMasterId': ?organizationMasterId,
      'resourceTypes': ?resourceTypes,
      'status': ?status,
    };
  }

  factory ConfigurationRecorderState.fromMap(Map<String, dynamic> map) {
    return ConfigurationRecorderState(
      enterpriseEdition: (() { final guardedValue = map['enterpriseEdition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      organizationEnableStatus: (() { final guardedValue = map['organizationEnableStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationMasterId: (() { final guardedValue = map['organizationMasterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

