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
      frontendPort: pulumi.Input.fromValue(map['frontendPort'] as int),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
