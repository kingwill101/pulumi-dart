// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_binding_advanced_options.dart';

/// {@template pulumi_hbr_policy_binding_policy_binding_args_doc}
/// The set of arguments for PolicyBinding.
/// {@endtemplate}
/// {@macro pulumi_hbr_policy_binding_policy_binding_args_doc}
class PolicyBindingArgs {
  /// Backup Advanced Options See `advanced_options` below.
  final pulumi.Input<PolicyBindingAdvancedOptions>? advancedOptions;
  /// Valid only when CrossAccountType = CROSS_ACCOUNT, indicating the name of the cross-account authorization role of the data source, and the management account uses this role to access the data source.
  final pulumi.Input<String>? crossAccountRoleName;
  /// Cross-account type, supported
  final pulumi.Input<String>? crossAccountType;
  /// Valid only when CrossAccountType = CROSS_ACCOUNT, indicating the ID of the actual account to which the data source belongs.
  final pulumi.Input<int>? crossAccountUserId;
  /// The data source ID.
  final pulumi.Input<String>? dataSourceId;
  /// Whether the policy is effective for the data source.
  /// - true: Pause
  /// - false: not paused
  final pulumi.Input<bool>? disabled;
  /// This parameter is required only when the value of SourceType is ECS_FILE or File. Indicates a file type that does not need to be backed up. All files of this type are not backed up. A maximum of 255 characters is supported.
  final pulumi.Input<String>? exclude;
  /// This parameter is required only when the value of SourceType is ECS_FILE or File. Indicates the file types to be backed up, and all files of these types are backed up. A maximum of 255 characters is supported.
  final pulumi.Input<String>? include;
  /// Resource Description
  final pulumi.Input<String>? policyBindingDescription;
  /// The policy ID.
  final pulumi.Input<String>? policyId;
  /// When SourceType is OSS, a prefix is specified to be backed up. If it is not specified, the entire root directory of the Bucket is backed up.
  final pulumi.Input<String>? source;
  /// Data source type, value range:
  /// - `UDM_ECS`: indicates the ECS instance backup.
  /// - `OSS`: indicates an OSS backup.
  /// - `NAS`: indicates an Alibaba Cloud NAS Backup. When you bind a file system to a policy, Cloud Backup automatically creates a mount point for the file system. If you no longer need the mount point, delete it manually.
  /// - `ECS_FILE`: indicates that the ECS file is backed up.
  /// - `File`: indicates a local File backup.
  /// - `OTS`: indicates the Tablestore backup.
  final pulumi.Input<String>? sourceType;
  /// This parameter is required only when the value of SourceType is ECS_FILE or File. Indicates backup flow control. The format is {start}{end}{bandwidth}. Multiple flow control configurations use partitioning, and no overlap in configuration time is allowed. start: start hour. end: end of hour. bandwidth: limit rate, in KB/s.
  final pulumi.Input<String>? speedLimit;

  /// Creates a new [PolicyBindingArgs].
  /// [advancedOptions] Backup Advanced Options See `advanced_options` below.
  /// [crossAccountRoleName] Valid only when CrossAccountType = CROSS_ACCOUNT, indicating the name of the cross-account authorization role of the data source, and the management account uses this role to access the data source.
  /// [crossAccountType] Cross-account type, supported
  /// [crossAccountUserId] Valid only when CrossAccountType = CROSS_ACCOUNT, indicating the ID of the actual account to which the data source belongs.
  /// [dataSourceId] The data source ID.
  /// [disabled] Whether the policy is effective for the data source.
  /// [exclude] This parameter is required only when the value of SourceType is ECS_FILE or File. Indicates a file type that does not need to be backed up. All files of this type are not backed up. A maximum of 255 characters is supported.
  /// [include] This parameter is required only when the value of SourceType is ECS_FILE or File. Indicates the file types to be backed up, and all files of these types are backed up. A maximum of 255 characters is supported.
  /// [policyBindingDescription] Resource Description
  /// [policyId] The policy ID.
  /// [source] When SourceType is OSS, a prefix is specified to be backed up. If it is not specified, the entire root directory of the Bucket is backed up.
  /// [sourceType] Data source type, value range:
  /// [speedLimit] This parameter is required only when the value of SourceType is ECS_FILE or File. Indicates backup flow control. The format is {start}{end}{bandwidth}. Multiple flow control configurations use partitioning, and no overlap in configuration time is allowed. start: start hour. end: end of hour. bandwidth: limit rate, in KB/s.
  PolicyBindingArgs({
    this.advancedOptions,
    this.crossAccountRoleName,
    this.crossAccountType,
    this.crossAccountUserId,
    this.dataSourceId,
    this.disabled,
    this.exclude,
    this.include,
    this.policyBindingDescription,
    this.policyId,
    this.source,
    this.sourceType,
    this.speedLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedOptions': ?pulumi.Input.mapOptionalInputValue<PolicyBindingAdvancedOptions, Map<String, dynamic>>(advancedOptions, (value) => value.toMap()),
      'crossAccountRoleName': ?crossAccountRoleName,
      'crossAccountType': ?crossAccountType,
      'crossAccountUserId': ?crossAccountUserId,
      'dataSourceId': ?dataSourceId,
      'disabled': ?disabled,
      'exclude': ?exclude,
      'include': ?include,
      'policyBindingDescription': ?policyBindingDescription,
      'policyId': ?policyId,
      'source': ?source,
      'sourceType': ?sourceType,
      'speedLimit': ?speedLimit,
    };
  }

  factory PolicyBindingArgs.fromMap(Map<String, dynamic> map) {
    return PolicyBindingArgs(
      advancedOptions: map['advancedOptions'] == null ? null : (PolicyBindingAdvancedOptions.fromMap((map['advancedOptions'] as Map).cast<String, dynamic>())).input(),
      crossAccountRoleName: map['crossAccountRoleName'] == null ? null : (map['crossAccountRoleName'] as String).input(),
      crossAccountType: map['crossAccountType'] == null ? null : (map['crossAccountType'] as String).input(),
      crossAccountUserId: map['crossAccountUserId'] == null ? null : (map['crossAccountUserId'] as int).input(),
      dataSourceId: map['dataSourceId'] == null ? null : (map['dataSourceId'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      exclude: map['exclude'] == null ? null : (map['exclude'] as String).input(),
      include: map['include'] == null ? null : (map['include'] as String).input(),
      policyBindingDescription: map['policyBindingDescription'] == null ? null : (map['policyBindingDescription'] as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      sourceType: map['sourceType'] == null ? null : (map['sourceType'] as String).input(),
      speedLimit: map['speedLimit'] == null ? null : (map['speedLimit'] as String).input(),
    );
  }
}

