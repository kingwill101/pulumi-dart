// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_policy_centralize_config.dart';
import 'collection_policy_data_config.dart';
import 'collection_policy_policy_config.dart';
import 'collection_policy_resource_directory.dart';

/// {@template pulumi_sls_collection_policy_collection_policy_args_doc}
/// The set of arguments for CollectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_sls_collection_policy_collection_policy_args_doc}
class CollectionPolicyArgs {
  /// Centralized forwarding configuration. See `centralize_config` below.
  final pulumi.Input<CollectionPolicyCentralizeConfig>? centralizeConfig;
  /// Specifies whether to enable centralized forwarding. Default value: false.
  final pulumi.Input<bool>? centralizeEnabled;
  /// Log type code.
  final pulumi.Input<String> dataCode;
  /// This parameter can be configured only when the log type is a global log type—for example, when productCode is sls. It indicates that global logs will be collected to the specified region upon initial configuration. See `data_config` below.
  final pulumi.Input<CollectionPolicyDataConfig>? dataConfig;
  /// Whether enabled.
  final pulumi.Input<bool> enabled;
  /// Collection rule configuration. See `policy_config` below.
  final pulumi.Input<CollectionPolicyPolicyConfig> policyConfig;
  /// The naming rules are as follows:
  /// - It can contain only lowercase letters, digits, hyphens (-), and underscores (_).
  /// - It must start with a letter.
  /// - Its length must be between 3 and 63 characters.
  final pulumi.Input<String> policyName;
  /// Product code.
  final pulumi.Input<String> productCode;
  /// Resource Directory configuration. The account must have Resource Directory enabled and be either a management account or a delegated administrator. See `resource_directory` below.
  final pulumi.Input<CollectionPolicyResourceDirectory>? resourceDirectory;

  /// Creates a new [CollectionPolicyArgs].
  /// [centralizeConfig] Centralized forwarding configuration. See `centralize_config` below.
  /// [centralizeEnabled] Specifies whether to enable centralized forwarding. Default value: false.
  /// [dataCode] Log type code.
  /// [dataConfig] This parameter can be configured only when the log type is a global log type—for example, when productCode is sls. It indicates that global logs will be collected to the specified region upon initial configuration. See `data_config` below.
  /// [enabled] Whether enabled.
  /// [policyConfig] Collection rule configuration. See `policy_config` below.
  /// [policyName] The naming rules are as follows:
  /// [productCode] Product code.
  /// [resourceDirectory] Resource Directory configuration. The account must have Resource Directory enabled and be either a management account or a delegated administrator. See `resource_directory` below.
  CollectionPolicyArgs({
    pulumi.Output<CollectionPolicyCentralizeConfig>? centralizeConfig,
    pulumi.Output<bool>? centralizeEnabled,
    required pulumi.Output<String> dataCode,
    pulumi.Output<CollectionPolicyDataConfig>? dataConfig,
    required pulumi.Output<bool> enabled,
    required pulumi.Output<CollectionPolicyPolicyConfig> policyConfig,
    required pulumi.Output<String> policyName,
    required pulumi.Output<String> productCode,
    pulumi.Output<CollectionPolicyResourceDirectory>? resourceDirectory,
  }) :
      centralizeConfig = pulumi.Input.asOptionalInput<CollectionPolicyCentralizeConfig>(centralizeConfig),
      centralizeEnabled = pulumi.Input.asOptionalInput<bool>(centralizeEnabled),
      dataCode = pulumi.Input.asInput<String>(dataCode),
      dataConfig = pulumi.Input.asOptionalInput<CollectionPolicyDataConfig>(dataConfig),
      enabled = pulumi.Input.asInput<bool>(enabled),
      policyConfig = pulumi.Input.asInput<CollectionPolicyPolicyConfig>(policyConfig),
      policyName = pulumi.Input.asInput<String>(policyName),
      productCode = pulumi.Input.asInput<String>(productCode),
      resourceDirectory = pulumi.Input.asOptionalInput<CollectionPolicyResourceDirectory>(resourceDirectory);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centralizeConfig': ?pulumi.Input.mapOptionalInputValue<CollectionPolicyCentralizeConfig, Map<String, dynamic>>(centralizeConfig, (value) => value.toMap()),
      'centralizeEnabled': ?centralizeEnabled,
      'dataCode': dataCode,
      'dataConfig': ?pulumi.Input.mapOptionalInputValue<CollectionPolicyDataConfig, Map<String, dynamic>>(dataConfig, (value) => value.toMap()),
      'enabled': enabled,
      'policyConfig': pulumi.Input.mapInputValue<CollectionPolicyPolicyConfig, Map<String, dynamic>>(policyConfig, (value) => value.toMap()),
      'policyName': policyName,
      'productCode': productCode,
      'resourceDirectory': ?pulumi.Input.mapOptionalInputValue<CollectionPolicyResourceDirectory, Map<String, dynamic>>(resourceDirectory, (value) => value.toMap()),
    };
  }

  factory CollectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return CollectionPolicyArgs(
      centralizeConfig: map['centralizeConfig'] == null ? null : pulumi.Output.create<CollectionPolicyCentralizeConfig>(CollectionPolicyCentralizeConfig.fromMap((map['centralizeConfig'] as Map).cast<String, dynamic>())),
      centralizeEnabled: map['centralizeEnabled'] == null ? null : pulumi.Output.create<bool>(map['centralizeEnabled'] as bool),
      dataCode: pulumi.Output.create<String>(map['dataCode'] as String),
      dataConfig: map['dataConfig'] == null ? null : pulumi.Output.create<CollectionPolicyDataConfig>(CollectionPolicyDataConfig.fromMap((map['dataConfig'] as Map).cast<String, dynamic>())),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      policyConfig: pulumi.Output.create<CollectionPolicyPolicyConfig>(CollectionPolicyPolicyConfig.fromMap((map['policyConfig'] as Map).cast<String, dynamic>())),
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      productCode: pulumi.Output.create<String>(map['productCode'] as String),
      resourceDirectory: map['resourceDirectory'] == null ? null : pulumi.Output.create<CollectionPolicyResourceDirectory>(CollectionPolicyResourceDirectory.fromMap((map['resourceDirectory'] as Map).cast<String, dynamic>())),
    );
  }
}

