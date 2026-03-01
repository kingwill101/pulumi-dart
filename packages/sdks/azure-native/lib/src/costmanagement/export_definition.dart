// ignore_for_file: unused_element, unnecessary_cast

import 'export_dataset.dart';
import 'export_time_period.dart';

/// The definition of an export.
class ExportDefinition {
  /// The definition for data in the export.
  final ExportDataset? dataSet;
  /// Has time period for pulling data for the export.
  final ExportTimePeriod? timePeriod;
  /// The time frame for pulling data for the export. If custom, then a specific time period must be provided.
  final String timeframe;
  /// The type of the export. Note that 'Usage' is equivalent to 'ActualCost' and is applicable to exports that do not yet provide data for charges or amortization for service reservations.
  final String type;

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
      'dataSet': ?dataSet == null ? null : dataSet!.toMap(),
      'timePeriod': ?timePeriod == null ? null : timePeriod!.toMap(),
      'timeframe': timeframe,
      'type': type,
    };
  }

  factory ExportDefinition.fromMap(Map<String, dynamic> map) {
    return ExportDefinition(
      dataSet: map['dataSet'] == null ? null : ExportDataset.fromMap((map['dataSet'] as Map).cast<String, dynamic>()),
      timePeriod: map['timePeriod'] == null ? null : ExportTimePeriod.fromMap((map['timePeriod'] as Map).cast<String, dynamic>()),
      timeframe: map['timeframe'] as String,
      type: map['type'] as String,
    );
  }
}

