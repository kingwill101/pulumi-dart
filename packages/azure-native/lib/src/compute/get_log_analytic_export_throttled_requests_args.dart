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
    required String blobContainerSasUri,
    required String fromTime,
    bool? groupByClientApplicationId,
    bool? groupByOperationName,
    bool? groupByResourceName,
    bool? groupByThrottlePolicy,
    bool? groupByUserAgent,
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
      'location': location,
      'toTime': toTime,
    };
  }

  factory GetLogAnalyticExportThrottledRequestsArgs.fromMap(Map<String, dynamic> map) {
    return GetLogAnalyticExportThrottledRequestsArgs(
      blobContainerSasUri: map['blobContainerSasUri'] as String,
      fromTime: map['fromTime'] as String,
      groupByClientApplicationId: map['groupByClientApplicationId'] == null ? null : map['groupByClientApplicationId'] as bool,
      groupByOperationName: map['groupByOperationName'] == null ? null : map['groupByOperationName'] as bool,
      groupByResourceName: map['groupByResourceName'] == null ? null : map['groupByResourceName'] as bool,
      groupByThrottlePolicy: map['groupByThrottlePolicy'] == null ? null : map['groupByThrottlePolicy'] as bool,
      groupByUserAgent: map['groupByUserAgent'] == null ? null : map['groupByUserAgent'] as bool,
      location: map['location'] as String,
      toTime: map['toTime'] as String,
    );
  }
}

