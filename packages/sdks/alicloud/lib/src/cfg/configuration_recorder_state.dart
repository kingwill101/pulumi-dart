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
    pulumi.Output<bool>? enterpriseEdition,
    pulumi.Output<String>? organizationEnableStatus,
    pulumi.Output<int>? organizationMasterId,
    pulumi.Output<List<String>>? resourceTypes,
    pulumi.Output<String>? status,
  }) :
      enterpriseEdition = pulumi.Input.asOptionalInput<bool>(enterpriseEdition),
      organizationEnableStatus = pulumi.Input.asOptionalInput<String>(organizationEnableStatus),
      organizationMasterId = pulumi.Input.asOptionalInput<int>(organizationMasterId),
      resourceTypes = pulumi.Input.asOptionalInput<List<String>>(resourceTypes),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      enterpriseEdition: map['enterpriseEdition'] == null ? null : pulumi.Output.create<bool>(map['enterpriseEdition'] as bool),
      organizationEnableStatus: map['organizationEnableStatus'] == null ? null : pulumi.Output.create<String>(map['organizationEnableStatus'] as String),
      organizationMasterId: map['organizationMasterId'] == null ? null : pulumi.Output.create<int>(map['organizationMasterId'] as int),
      resourceTypes: map['resourceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['resourceTypes'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

