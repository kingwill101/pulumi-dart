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
    pulumi.Output<String>? customType,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? strategyIds,
  }) :
      customType = pulumi.Input.asOptionalInput<String>(customType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      strategyIds = pulumi.Input.asOptionalInput<String>(strategyIds);

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
      customType: map['customType'] == null ? null : pulumi.Output.create<String>(map['customType'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      strategyIds: map['strategyIds'] == null ? null : pulumi.Output.create<String>(map['strategyIds'] as String),
    );
  }
}

