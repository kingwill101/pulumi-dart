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
  const ScanRuleState({
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaces: (() { final guardedValue = map['namespaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      repoNames: (() { final guardedValue = map['repoNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      repoTagFilterPattern: (() { final guardedValue = map['repoTagFilterPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanRuleId: (() { final guardedValue = map['scanRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanScope: (() { final guardedValue = map['scanScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanType: (() { final guardedValue = map['scanType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerType: (() { final guardedValue = map['triggerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

