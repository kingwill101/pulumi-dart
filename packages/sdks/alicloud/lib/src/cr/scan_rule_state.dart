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
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? instanceId,
    pulumi.Output<List<String>>? namespaces,
    pulumi.Output<List<String>>? repoNames,
    pulumi.Output<String>? repoTagFilterPattern,
    pulumi.Output<String>? ruleName,
    pulumi.Output<String>? scanRuleId,
    pulumi.Output<String>? scanScope,
    pulumi.Output<String>? scanType,
    pulumi.Output<String>? triggerType,
  }) :
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      namespaces = pulumi.Input.asOptionalInput<List<String>>(namespaces),
      repoNames = pulumi.Input.asOptionalInput<List<String>>(repoNames),
      repoTagFilterPattern = pulumi.Input.asOptionalInput<String>(repoTagFilterPattern),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      scanRuleId = pulumi.Input.asOptionalInput<String>(scanRuleId),
      scanScope = pulumi.Input.asOptionalInput<String>(scanScope),
      scanType = pulumi.Input.asOptionalInput<String>(scanType),
      triggerType = pulumi.Input.asOptionalInput<String>(triggerType);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      namespaces: map['namespaces'] == null ? null : pulumi.Output.create<List<String>>((map['namespaces'] as List).cast<String>()),
      repoNames: map['repoNames'] == null ? null : pulumi.Output.create<List<String>>((map['repoNames'] as List).cast<String>()),
      repoTagFilterPattern: map['repoTagFilterPattern'] == null ? null : pulumi.Output.create<String>(map['repoTagFilterPattern'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      scanRuleId: map['scanRuleId'] == null ? null : pulumi.Output.create<String>(map['scanRuleId'] as String),
      scanScope: map['scanScope'] == null ? null : pulumi.Output.create<String>(map['scanScope'] as String),
      scanType: map['scanType'] == null ? null : pulumi.Output.create<String>(map['scanType'] as String),
      triggerType: map['triggerType'] == null ? null : pulumi.Output.create<String>(map['triggerType'] as String),
    );
  }
}

