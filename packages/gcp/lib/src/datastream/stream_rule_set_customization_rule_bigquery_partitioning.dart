// ignore_for_file: unused_element, unnecessary_cast

import 'stream_rule_set_customization_rule_bigquery_partitioning_ingestion_time_partition.dart';
import 'stream_rule_set_customization_rule_bigquery_partitioning_integer_range_partition.dart';
import 'stream_rule_set_customization_rule_bigquery_partitioning_time_unit_partition.dart';

class StreamRuleSetCustomizationRuleBigqueryPartitioning {
  /// A nested object resource.
  /// Structure is documented below.
  final StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition?
  ingestionTimePartition;

  /// A nested object resource.
  /// Structure is documented below.
  final StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition?
  integerRangePartition;

  /// If true, queries over the table require a partition filter.
  final bool? requirePartitionFilter;

  /// A nested object resource.
  /// Structure is documented below.
  final StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition?
  timeUnitPartition;

  /// Creates a new [StreamRuleSetCustomizationRuleBigqueryPartitioning].
  /// [ingestionTimePartition] A nested object resource.
  /// [integerRangePartition] A nested object resource.
  /// [requirePartitionFilter] If true, queries over the table require a partition filter.
  /// [timeUnitPartition] A nested object resource.
  StreamRuleSetCustomizationRuleBigqueryPartitioning({
    this.ingestionTimePartition,
    this.integerRangePartition,
    this.requirePartitionFilter,
    this.timeUnitPartition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingestionTimePartition': ?ingestionTimePartition == null
          ? null
          : ingestionTimePartition!.toMap(),
      'integerRangePartition': ?integerRangePartition == null
          ? null
          : integerRangePartition!.toMap(),
      'requirePartitionFilter': ?requirePartitionFilter,
      'timeUnitPartition': ?timeUnitPartition == null
          ? null
          : timeUnitPartition!.toMap(),
    };
  }

  factory StreamRuleSetCustomizationRuleBigqueryPartitioning.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamRuleSetCustomizationRuleBigqueryPartitioning(
      ingestionTimePartition: map['ingestionTimePartition'] == null
          ? null
          : StreamRuleSetCustomizationRuleBigqueryPartitioningIngestionTimePartition.fromMap(
              (map['ingestionTimePartition'] as Map).cast<String, dynamic>(),
            ),
      integerRangePartition: map['integerRangePartition'] == null
          ? null
          : StreamRuleSetCustomizationRuleBigqueryPartitioningIntegerRangePartition.fromMap(
              (map['integerRangePartition'] as Map).cast<String, dynamic>(),
            ),
      requirePartitionFilter: map['requirePartitionFilter'] == null
          ? null
          : map['requirePartitionFilter'] as bool,
      timeUnitPartition: map['timeUnitPartition'] == null
          ? null
          : StreamRuleSetCustomizationRuleBigqueryPartitioningTimeUnitPartition.fromMap(
              (map['timeUnitPartition'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
