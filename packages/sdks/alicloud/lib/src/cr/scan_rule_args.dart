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
    required this.instanceId,
    this.namespaces,
    this.repoNames,
    required this.repoTagFilterPattern,
    required this.ruleName,
    required this.scanScope,
    required this.scanType,
    required this.triggerType,
  });

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
      instanceId: (map['instanceId'] as String).input(),
      namespaces: map['namespaces'] == null ? null : ((map['namespaces'] as List).cast<String>()).input(),
      repoNames: map['repoNames'] == null ? null : ((map['repoNames'] as List).cast<String>()).input(),
      repoTagFilterPattern: (map['repoTagFilterPattern'] as String).input(),
      ruleName: (map['ruleName'] as String).input(),
      scanScope: (map['scanScope'] as String).input(),
      scanType: (map['scanType'] as String).input(),
      triggerType: (map['triggerType'] as String).input(),
    );
  }
}

