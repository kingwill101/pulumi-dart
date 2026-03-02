// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_baseline_strategies_get_baseline_strategies_args_doc}
/// Arguments for getBaselineStrategies.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_baseline_strategies_get_baseline_strategies_args_doc}
class GetBaselineStrategiesArgs {
  /// The type of policy. Value:-**common**: standard policy-**custom**: custom policy
  final pulumi.Input<String>? customType;
  /// A list of Baseline Strategy IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? strategyIds;

  /// Creates a new [GetBaselineStrategiesArgs].
  /// [customType] The type of policy. Value:-**common**: standard policy-**custom**: custom policy
  /// [ids] A list of Baseline Strategy IDs.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [strategyIds] Optional.
  GetBaselineStrategiesArgs({
    this.customType,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.strategyIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customType': ?customType,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'strategyIds': ?strategyIds,
    };
  }

  factory GetBaselineStrategiesArgs.fromMap(Map<String, dynamic> map) {
    return GetBaselineStrategiesArgs(
      customType: map['customType'] == null ? null : (map['customType']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      strategyIds: map['strategyIds'] == null ? null : (map['strategyIds']! as String).input(),
    );
  }
}

