// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_log_analytic_export_throttled_requests_args_doc}
/// Arguments for getLogAnalyticExportThrottledRequests.
/// {@endtemplate}
/// {@macro pulumi_compute_get_log_analytic_export_throttled_requests_args_doc}
class GetLogAnalyticExportThrottledRequestsArgs {
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
  /// The name of Azure region.
  final pulumi.Input<String> location;
  /// To time of the query
  final pulumi.Input<String> toTime;

  /// Creates a new [GetLogAnalyticExportThrottledRequestsArgs].
  /// [blobContainerSasUri] SAS Uri of the logging blob container to which LogAnalytics Api writes output logs to.
  /// [fromTime] From time of the query
  /// [groupByClientApplicationId] Group query result by Client Application ID.
  /// [groupByOperationName] Group query result by Operation Name.
  /// [groupByResourceName] Group query result by Resource Name.
  /// [groupByThrottlePolicy] Group query result by Throttle Policy applied.
  /// [groupByUserAgent] Group query result by User Agent.
  /// [location] The name of Azure region.
  /// [toTime] To time of the query
  GetLogAnalyticExportThrottledRequestsArgs({
    required this.blobContainerSasUri,
    required this.fromTime,
    this.groupByClientApplicationId,
    this.groupByOperationName,
    this.groupByResourceName,
    this.groupByThrottlePolicy,
    this.groupByUserAgent,
    required this.location,
    required this.toTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerSasUri': blobContainerSasUri,
      'fromTime': fromTime,
      'groupByClientApplicationId': ?groupByClientApplicationId,
      'groupByOperationName': ?groupByOperationName,
      'groupByResourceName': ?groupByResourceName,
      'groupByThrottlePolicy': ?groupByThrottlePolicy,
      'groupByUserAgent': ?groupByUserAgent,
      'location': location,
      'toTime': toTime,
    };
  }

  factory GetLogAnalyticExportThrottledRequestsArgs.fromMap(Map<String, dynamic> map) {
    return GetLogAnalyticExportThrottledRequestsArgs(
      blobContainerSasUri: (map['blobContainerSasUri'] as String).input(),
      fromTime: (map['fromTime'] as String).input(),
      groupByClientApplicationId: map['groupByClientApplicationId'] == null ? null : (map['groupByClientApplicationId'] as bool).input(),
      groupByOperationName: map['groupByOperationName'] == null ? null : (map['groupByOperationName'] as bool).input(),
      groupByResourceName: map['groupByResourceName'] == null ? null : (map['groupByResourceName'] as bool).input(),
      groupByThrottlePolicy: map['groupByThrottlePolicy'] == null ? null : (map['groupByThrottlePolicy'] as bool).input(),
      groupByUserAgent: map['groupByUserAgent'] == null ? null : (map['groupByUserAgent'] as bool).input(),
      location: (map['location'] as String).input(),
      toTime: (map['toTime'] as String).input(),
    );
  }
}

