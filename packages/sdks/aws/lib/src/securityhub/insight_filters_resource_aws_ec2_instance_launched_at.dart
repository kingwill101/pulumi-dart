// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insight_filters_resource_aws_ec2_instance_launched_at_date_range.dart';

class InsightFiltersResourceAwsEc2InstanceLaunchedAt {
  /// A configuration block of the date range for the date filter. See date_range below for more details.
  final pulumi.Input<InsightFiltersResourceAwsEc2InstanceLaunchedAtDateRange>? dateRange;
  /// An end date for the date filter. Required with `start` if `date_range` is not specified.
  final pulumi.Input<String>? end;
  /// A start date for the date filter. Required with `end` if `date_range` is not specified.
  final pulumi.Input<String>? start;

  /// Creates a new [InsightFiltersResourceAwsEc2InstanceLaunchedAt].
  /// [dateRange] A configuration block of the date range for the date filter. See date_range below for more details.
  /// [end] An end date for the date filter. Required with `start` if `date_range` is not specified.
  /// [start] A start date for the date filter. Required with `end` if `date_range` is not specified.
  InsightFiltersResourceAwsEc2InstanceLaunchedAt({
    this.dateRange,
    this.end,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateRange': ?pulumi.Input.mapOptionalInputValue<InsightFiltersResourceAwsEc2InstanceLaunchedAtDateRange, Map<String, dynamic>>(dateRange, (value) => value.toMap()),
      'end': ?end,
      'start': ?start,
    };
  }

  factory InsightFiltersResourceAwsEc2InstanceLaunchedAt.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceAwsEc2InstanceLaunchedAt(
      dateRange: map['dateRange'] == null ? null : (InsightFiltersResourceAwsEc2InstanceLaunchedAtDateRange.fromMap((map['dateRange'] as Map).cast<String, dynamic>())).input(),
      end: map['end'] == null ? null : (map['end'] as String).input(),
      start: map['start'] == null ? null : (map['start'] as String).input(),
    );
  }
}

