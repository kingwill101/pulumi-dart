// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_scan_rule_scan_rule_args_doc}
/// The set of arguments for ScanRule.
/// {@endtemplate}
/// {@macro pulumi_cr_scan_rule_scan_rule_args_doc}
class ScanRuleArgs {
  /// Instance ID
  final pulumi.Input<String> instanceId;
  /// Set of namespaces:
  /// - This parameter must not be empty when the scan scope is NAMESPACE.
  /// - This parameter must contain exactly one namespace when the scan scope is REPO.
  final pulumi.Input<List<String>>? namespaces;
  /// Repository list:
  /// - This parameter must be empty when the scan scope is NAMESPACE.
  /// - This parameter must not be empty when the scan scope is REPO.
  final pulumi.Input<List<String>>? repoNames;
  /// Regular expression for matching tags that trigger a scan
  final pulumi.Input<String> repoTagFilterPattern;
  /// Event rule name
  final pulumi.Input<String> ruleName;
  /// Scan scope
  final pulumi.Input<String> scanScope;
  /// Scan type:
  /// - `VUL`: Artifact vulnerability scan
  /// - `SBOM`: Artifact content analysis
  ///
  /// The default value of this parameter is `VUL`.
  final pulumi.Input<String> scanType;
  /// Trigger type
  final pulumi.Input<String> triggerType;

  /// Creates a new [ScanRuleArgs].
  /// [instanceId] Instance ID
  /// [namespaces] Set of namespaces:
  /// [repoNames] Repository list:
  /// [repoTagFilterPattern] Regular expression for matching tags that trigger a scan
  /// [ruleName] Event rule name
  /// [scanScope] Scan scope
  /// [scanType] Scan type:
  /// [triggerType] Trigger type
  ScanRuleArgs({
    required pulumi.Output<String> instanceId,
    pulumi.Output<List<String>>? namespaces,
    pulumi.Output<List<String>>? repoNames,
    required pulumi.Output<String> repoTagFilterPattern,
    required pulumi.Output<String> ruleName,
    required pulumi.Output<String> scanScope,
    required pulumi.Output<String> scanType,
    required pulumi.Output<String> triggerType,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      namespaces = pulumi.Input.asOptionalInput<List<String>>(namespaces),
      repoNames = pulumi.Input.asOptionalInput<List<String>>(repoNames),
      repoTagFilterPattern = pulumi.Input.asInput<String>(repoTagFilterPattern),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      scanScope = pulumi.Input.asInput<String>(scanScope),
      scanType = pulumi.Input.asInput<String>(scanType),
      triggerType = pulumi.Input.asInput<String>(triggerType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'namespaces': ?namespaces,
      'repoNames': ?repoNames,
      'repoTagFilterPattern': repoTagFilterPattern,
      'ruleName': ruleName,
      'scanScope': scanScope,
      'scanType': scanType,
      'triggerType': triggerType,
    };
  }

  factory ScanRuleArgs.fromMap(Map<String, dynamic> map) {
    return ScanRuleArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      namespaces: map['namespaces'] == null ? null : pulumi.Output.create<List<String>>((map['namespaces'] as List).cast<String>()),
      repoNames: map['repoNames'] == null ? null : pulumi.Output.create<List<String>>((map['repoNames'] as List).cast<String>()),
      repoTagFilterPattern: pulumi.Output.create<String>(map['repoTagFilterPattern'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
      scanScope: pulumi.Output.create<String>(map['scanScope'] as String),
      scanType: pulumi.Output.create<String>(map['scanType'] as String),
      triggerType: pulumi.Output.create<String>(map['triggerType'] as String),
    );
  }
}

