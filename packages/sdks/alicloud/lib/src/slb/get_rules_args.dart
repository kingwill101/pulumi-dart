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
    required pulumi.Output<int> frontendPort,
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> loadBalancerId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      frontendPort = pulumi.Input.asInput<int>(frontendPort),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      frontendPort: pulumi.Output.create<int>(map['frontendPort'] as int),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      loadBalancerId: pulumi.Output.create<String>(map['loadBalancerId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

