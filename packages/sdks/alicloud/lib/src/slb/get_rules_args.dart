// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_get_rules_get_rules_args_doc}
/// Arguments for getRules.
/// {@endtemplate}
/// {@macro pulumi_slb_get_rules_get_rules_args_doc}
class GetRulesArgs {
  /// SLB listener port.
  final pulumi.Input<int> frontendPort;
  /// A list of rules IDs to filter results.
  final pulumi.Input<List<String>>? ids;
  /// ID of the SLB with listener rules.
  final pulumi.Input<String> loadBalancerId;
  /// A regex string to filter results by rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetRulesArgs].
  /// [frontendPort] SLB listener port.
  /// [ids] A list of rules IDs to filter results.
  /// [loadBalancerId] ID of the SLB with listener rules.
  /// [nameRegex] A regex string to filter results by rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetRulesArgs({
    required this.frontendPort,
    this.ids,
    required this.loadBalancerId,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendPort': frontendPort,
      'ids': ?ids,
      'loadBalancerId': loadBalancerId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetRulesArgs(
      frontendPort: (map['frontendPort'] as int).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      loadBalancerId: (map['loadBalancerId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

