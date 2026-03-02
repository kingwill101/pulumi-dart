// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_dataset.dart';
import 'export_time_period.dart';

/// The definition of an export.
class ExportDefinition {
  /// The definition for data in the export.
  final pulumi.Input<ExportDataset>? dataSet;
  /// Has time period for pulling data for the export.
  final pulumi.Input<ExportTimePeriod>? timePeriod;
  /// The time frame for pulling data for the export. If custom, then a specific time period must be provided.
  final pulumi.Input<String> timeframe;
  /// The type of the export. Note that 'Usage' is equivalent to 'ActualCost' and is applicable to exports that do not yet provide data for charges or amortization for service reservations.
  final pulumi.Input<String> type;

  /// Creates a new [ExportDefinition].
  /// [dataSet] The definition for data in the export.
  /// [timePeriod] Has time period for pulling data for the export.
  /// [timeframe] The time frame for pulling data for the export. If custom, then a specific time period must be provided.
  /// [type] The type of the export. Note that 'Usage' is equivalent to 'ActualCost' and is applicable to exports that do not yet provide data for charges or amortization for service reservations.
  ExportDefinition({
    this.dataSet,
    this.timePeriod,
    required this.timeframe,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSet': ?pulumi.Input.mapOptionalInputValue<ExportDataset, Map<String, dynamic>>(dataSet, (value) => value.toMap()),
      'timePeriod': ?pulumi.Input.mapOptionalInputValue<ExportTimePeriod, Map<String, dynamic>>(timePeriod, (value) => value.toMap()),
      'timeframe': timeframe,
      'type': type,
    };
  }

  factory ExportDefinition.fromMap(Map<String, dynamic> map) {
    return ExportDefinition(
      dataSet: map['dataSet'] == null ? null : (ExportDataset.fromMap((map['dataSet'] as Map).cast<String, dynamic>())).input(),
      timePeriod: map['timePeriod'] == null ? null : (ExportTimePeriod.fromMap((map['timePeriod'] as Map).cast<String, dynamic>())).input(),
      timeframe: (map['timeframe'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

