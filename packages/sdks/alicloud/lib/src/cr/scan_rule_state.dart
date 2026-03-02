// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ScanRule resources.
class ScanRuleState {
  /// Creation time
  final pulumi.Input<int>? createTime;
  /// Instance ID
  final pulumi.Input<String>? instanceId;
  /// Set of namespaces:
  /// - This parameter must not be empty when the scan scope is NAMESPACE.
  /// - This parameter must contain exactly one namespace when the scan scope is REPO.
  final pulumi.Input<List<String>>? namespaces;
  /// Repository list:
  /// - This parameter must be empty when the scan scope is NAMESPACE.
  /// - This parameter must not be empty when the scan scope is REPO.
  final pulumi.Input<List<String>>? repoNames;
  /// Regular expression for matching tags that trigger a scan
  final pulumi.Input<String>? repoTagFilterPattern;
  /// Event rule name
  final pulumi.Input<String>? ruleName;
  /// Rule ID
  final pulumi.Input<String>? scanRuleId;
  /// Scan scope
  final pulumi.Input<String>? scanScope;
  /// Scan type:
  /// - `VUL`: Artifact vulnerability scan
  /// - `SBOM`: Artifact content analysis
  ///
  /// The default value of this parameter is `VUL`.
  final pulumi.Input<String>? scanType;
  /// Trigger type
  final pulumi.Input<String>? triggerType;

  /// Creates a new [ScanRuleState].
  /// [createTime] Creation time
  /// [instanceId] Instance ID
  /// [namespaces] Set of namespaces:
  /// [repoNames] Repository list:
  /// [repoTagFilterPattern] Regular expression for matching tags that trigger a scan
  /// [ruleName] Event rule name
  /// [scanRuleId] Rule ID
  /// [scanScope] Scan scope
  /// [scanType] Scan type:
  /// [triggerType] Trigger type
  ScanRuleState({
    this.createTime,
    this.instanceId,
    this.namespaces,
    this.repoNames,
    this.repoTagFilterPattern,
    this.ruleName,
    this.scanRuleId,
    this.scanScope,
    this.scanType,
    this.triggerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'instanceId': ?instanceId,
      'namespaces': ?namespaces,
      'repoNames': ?repoNames,
      'repoTagFilterPattern': ?repoTagFilterPattern,
      'ruleName': ?ruleName,
      'scanRuleId': ?scanRuleId,
      'scanScope': ?scanScope,
      'scanType': ?scanType,
      'triggerType': ?triggerType,
    };
  }

  factory ScanRuleState.fromMap(Map<String, dynamic> map) {
    return ScanRuleState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as int).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      namespaces: map['namespaces'] == null ? null : ((map['namespaces'] as List).cast<String>()).input(),
      repoNames: map['repoNames'] == null ? null : ((map['repoNames'] as List).cast<String>()).input(),
      repoTagFilterPattern: map['repoTagFilterPattern'] == null ? null : (map['repoTagFilterPattern'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      scanRuleId: map['scanRuleId'] == null ? null : (map['scanRuleId'] as String).input(),
      scanScope: map['scanScope'] == null ? null : (map['scanScope'] as String).input(),
      scanType: map['scanType'] == null ? null : (map['scanType'] as String).input(),
      triggerType: map['triggerType'] == null ? null : (map['triggerType'] as String).input(),
    );
  }
}

