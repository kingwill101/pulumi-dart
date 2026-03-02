// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_anti_brute_force_rules_get_anti_brute_force_rules_args_doc}
/// Arguments for getAntiBruteForceRules.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_anti_brute_force_rules_get_anti_brute_force_rules_args_doc}
class GetAntiBruteForceRulesArgs {
  /// A list of Anti-Brute Force Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by the name of the defense rule.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAntiBruteForceRulesArgs].
  /// [ids] A list of Anti-Brute Force Rule IDs.
  /// [nameRegex] A regex string to filter results by the name of the defense rule.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAntiBruteForceRulesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetAntiBruteForceRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetAntiBruteForceRulesArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

