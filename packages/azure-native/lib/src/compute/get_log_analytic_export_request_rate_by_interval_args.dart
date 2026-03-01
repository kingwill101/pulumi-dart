// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interval_in_mins.dart';

/// {@template pulumi_compute_get_log_analytic_export_request_rate_by_interval_args_doc}
/// Arguments for getLogAnalyticExportRequestRateByInterval.
/// {@endtemplate}
/// {@macro pulumi_compute_get_log_analytic_export_request_rate_by_interval_args_doc}
class GetLogAnalyticExportRequestRateByIntervalArgs {
  /// SAS Uri of the logging blob container to which LogAnalytics Api writes output logs to.
  final pulumi.Input<String> blobContainerSasUri;
  /// From time of the query
  final pulumi.Input<String> fromTime;
  /// Group query result by Client Application ID.
  final pulumi.Input<bool>? groupByClientApplicationId;
  /// Group query result by Operation Name.
  final pulumi.Input<bool>? groupByOperationName;
  /// Group query result by Resource Name.
  final pulumi.Input<bool>? groupByResourceName;
  /// Group query result by Throttle Policy applied.
  final pulumi.Input<bool>? groupByThrottlePolicy;
  /// Group query result by User Agent.
  final pulumi.Input<bool>? groupByUserAgent;
  /// Interval value in minutes used to create LogAnalytics call rate logs.
  final pulumi.Input<IntervalInMins> intervalLength;
  /// The name of Azure region.
  final pulumi.Input<String> location;
  /// To time of the query
  final pulumi.Input<String> toTime;

  /// Creates a new [GetLogAnalyticExportRequestRateByIntervalArgs].
  /// [blobContainerSasUri] SAS Uri of the logging blob container to which LogAnalytics Api writes output logs to.
  /// [fromTime] From time of the query
  /// [groupByClientApplicationId] Group query result by Client Application ID.
  /// [groupByOperationName] Group query result by Operation Name.
  /// [groupByResourceName] Group query result by Resource Name.
  /// [groupByThrottlePolicy] Group query result by Throttle Policy applied.
  /// [groupByUserAgent] Group query result by User Agent.
  /// [intervalLength] Interval value in minutes used to create LogAnalytics call rate logs.
  /// [location] The name of Azure region.
  /// [toTime] To time of the query
  GetLogAnalyticExportRequestRateByIntervalArgs({
    required String blobContainerSasUri,
    required String fromTime,
    bool? groupByClientApplicationId,
    bool? groupByOperationName,
    bool? groupByResourceName,
    bool? groupByThrottlePolicy,
    bool? groupByUserAgent,
    required IntervalInMins intervalLength,
    required String location,
    required String toTime,
  }) :
      blobContainerSasUri = pulumi.Input.asInput<String>(blobContainerSasUri),
      fromTime = pulumi.Input.asInput<String>(fromTime),
      groupByClientApplicationId = pulumi.Input.asOptionalInput<bool>(groupByClientApplicationId),
      groupByOperationName = pulumi.Input.asOptionalInput<bool>(groupByOperationName),
      groupByResourceName = pulumi.Input.asOptionalInput<bool>(groupByResourceName),
      groupByThrottlePolicy = pulumi.Input.asOptionalInput<bool>(groupByThrottlePolicy),
      groupByUserAgent = pulumi.Input.asOptionalInput<bool>(groupByUserAgent),
      intervalLength = pulumi.Input.asInput<IntervalInMins>(intervalLength),
      location = pulumi.Input.asInput<String>(location),
      toTime = pulumi.Input.asInput<String>(toTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerSasUri': blobContainerSasUri,
      'fromTime': fromTime,
      'groupByClientApplicationId': ?groupByClientApplicationId,
      'groupByOperationName': ?groupByOperationName,
      'groupByResourceName': ?groupByResourceName,
      'groupByThrottlePolicy': ?groupByThrottlePolicy,
      'groupByUserAgent': ?groupByUserAgent,
      'intervalLength': pulumi.Input.mapInputValue<IntervalInMins, String>(intervalLength, (value) => value.value),
      'location': location,
      'toTime': toTime,
    };
  }

  factory GetLogAnalyticExportRequestRateByIntervalArgs.fromMap(Map<String, dynamic> map) {
    return GetLogAnalyticExportRequestRateByIntervalArgs(
      blobContainerSasUri: map['blobContainerSasUri'] as String,
      fromTime: map['fromTime'] as String,
      groupByClientApplicationId: map['groupByClientApplicationId'] == null ? null : map['groupByClientApplicationId'] as bool,
      groupByOperationName: map['groupByOperationName'] == null ? null : map['groupByOperationName'] as bool,
      groupByResourceName: map['groupByResourceName'] == null ? null : map['groupByResourceName'] as bool,
      groupByThrottlePolicy: map['groupByThrottlePolicy'] == null ? null : map['groupByThrottlePolicy'] as bool,
      groupByUserAgent: map['groupByUserAgent'] == null ? null : map['groupByUserAgent'] as bool,
      intervalLength: IntervalInMins.fromValue(map['intervalLength'] as String),
      location: map['location'] as String,
      toTime: map['toTime'] as String,
    );
  }
}

