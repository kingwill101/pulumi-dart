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
  const GetBaselineStrategiesArgs({
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
      customType: (() { final guardedValue = map['customType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strategyIds: (() { final guardedValue = map['strategyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

