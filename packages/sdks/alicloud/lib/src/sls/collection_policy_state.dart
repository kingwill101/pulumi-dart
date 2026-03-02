// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_policy_centralize_config.dart';
import 'collection_policy_data_config.dart';
import 'collection_policy_policy_config.dart';
import 'collection_policy_resource_directory.dart';

/// Input properties used for looking up and filtering CollectionPolicy resources.
class CollectionPolicyState {
  /// Centralized forwarding configuration. See `centralize_config` below.
  final pulumi.Input<CollectionPolicyCentralizeConfig>? centralizeConfig;
  /// Specifies whether to enable centralized forwarding. Default value: false.
  final pulumi.Input<bool>? centralizeEnabled;
  /// Log type code.
  final pulumi.Input<String>? dataCode;
  /// This parameter can be configured only when the log type is a global log type—for example, when productCode is sls. It indicates that global logs will be collected to the specified region upon initial configuration. See `data_config` below.
  final pulumi.Input<CollectionPolicyDataConfig>? dataConfig;
  /// Whether enabled.
  final pulumi.Input<bool>? enabled;
  /// Collection rule configuration. See `policy_config` below.
  final pulumi.Input<CollectionPolicyPolicyConfig>? policyConfig;
  /// The naming rules are as follows:
  /// - It can contain only lowercase letters, digits, hyphens (-), and underscores (_).
  /// - It must start with a letter.
  /// - Its length must be between 3 and 63 characters.
  final pulumi.Input<String>? policyName;
  /// Product code.
  final pulumi.Input<String>? productCode;
  /// Resource Directory configuration. The account must have Resource Directory enabled and be either a management account or a delegated administrator. See `resource_directory` below.
  final pulumi.Input<CollectionPolicyResourceDirectory>? resourceDirectory;

  /// Creates a new [CollectionPolicyState].
  /// [centralizeConfig] Centralized forwarding configuration. See `centralize_config` below.
  /// [centralizeEnabled] Specifies whether to enable centralized forwarding. Default value: false.
  /// [dataCode] Log type code.
  /// [dataConfig] This parameter can be configured only when the log type is a global log type—for example, when productCode is sls. It indicates that global logs will be collected to the specified region upon initial configuration. See `data_config` below.
  /// [enabled] Whether enabled.
  /// [policyConfig] Collection rule configuration. See `policy_config` below.
  /// [policyName] The naming rules are as follows:
  /// [productCode] Product code.
  /// [resourceDirectory] Resource Directory configuration. The account must have Resource Directory enabled and be either a management account or a delegated administrator. See `resource_directory` below.
  CollectionPolicyState({
    this.centralizeConfig,
    this.centralizeEnabled,
    this.dataCode,
    this.dataConfig,
    this.enabled,
    this.policyConfig,
    this.policyName,
    this.productCode,
    this.resourceDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'centralizeConfig': ?pulumi.Input.mapOptionalInputValue<CollectionPolicyCentralizeConfig, Map<String, dynamic>>(centralizeConfig, (value) => value.toMap()),
      'centralizeEnabled': ?centralizeEnabled,
      'dataCode': ?dataCode,
      'dataConfig': ?pulumi.Input.mapOptionalInputValue<CollectionPolicyDataConfig, Map<String, dynamic>>(dataConfig, (value) => value.toMap()),
      'enabled': ?enabled,
      'policyConfig': ?pulumi.Input.mapOptionalInputValue<CollectionPolicyPolicyConfig, Map<String, dynamic>>(policyConfig, (value) => value.toMap()),
      'policyName': ?policyName,
      'productCode': ?productCode,
      'resourceDirectory': ?pulumi.Input.mapOptionalInputValue<CollectionPolicyResourceDirectory, Map<String, dynamic>>(resourceDirectory, (value) => value.toMap()),
    };
  }

  factory CollectionPolicyState.fromMap(Map<String, dynamic> map) {
    return CollectionPolicyState(
      centralizeConfig: map['centralizeConfig'] == null ? null : (CollectionPolicyCentralizeConfig.fromMap((map['centralizeConfig']! as Map).cast<String, dynamic>())).input(),
      centralizeEnabled: map['centralizeEnabled'] == null ? null : (map['centralizeEnabled']! as bool).input(),
      dataCode: map['dataCode'] == null ? null : (map['dataCode']! as String).input(),
      dataConfig: map['dataConfig'] == null ? null : (CollectionPolicyDataConfig.fromMap((map['dataConfig']! as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      policyConfig: map['policyConfig'] == null ? null : (CollectionPolicyPolicyConfig.fromMap((map['policyConfig']! as Map).cast<String, dynamic>())).input(),
      policyName: map['policyName'] == null ? null : (map['policyName']! as String).input(),
      productCode: map['productCode'] == null ? null : (map['productCode']! as String).input(),
      resourceDirectory: map['resourceDirectory'] == null ? null : (CollectionPolicyResourceDirectory.fromMap((map['resourceDirectory']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

