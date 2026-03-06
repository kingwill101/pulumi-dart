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
  const CollectionPolicyArgs({
    this.centralizeConfig,
    this.centralizeEnabled,
    required this.dataCode,
    this.dataConfig,
    required this.enabled,
    required this.policyConfig,
    required this.policyName,
    required this.productCode,
    this.resourceDirectory,
  });

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
      centralizeConfig: (() { final guardedValue = map['centralizeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CollectionPolicyCentralizeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      centralizeEnabled: (() { final guardedValue = map['centralizeEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataCode: pulumi.Input.fromValue(map['dataCode'] as String),
      dataConfig: (() { final guardedValue = map['dataConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CollectionPolicyDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      policyConfig: pulumi.Input.fromValue(CollectionPolicyPolicyConfig.fromMap((map['policyConfig']! as Map).cast<String, dynamic>())),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      resourceDirectory: (() { final guardedValue = map['resourceDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CollectionPolicyResourceDirectory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

