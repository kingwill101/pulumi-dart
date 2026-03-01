// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'requests_based_trigger_response.dart';
import 'slow_requests_based_trigger_response.dart';
import 'status_codes_based_trigger_response.dart';
import 'status_codes_range_based_trigger_response.dart';

/// Triggers for auto-heal.
class AutoHealTriggersResponse {
  /// A rule based on private bytes.
  final int? privateBytesInKB;
  /// A rule based on total requests.
  final RequestsBasedTriggerResponse? requests;
  /// A rule based on request execution time.
  final SlowRequestsBasedTriggerResponse? slowRequests;
  /// A rule based on multiple Slow Requests Rule with path
  final List<SlowRequestsBasedTriggerResponse>? slowRequestsWithPath;
  /// A rule based on status codes.
  final List<StatusCodesBasedTriggerResponse>? statusCodes;
  /// A rule based on status codes ranges.
  final List<StatusCodesRangeBasedTriggerResponse>? statusCodesRange;

  /// Creates a new [AutoHealTriggersResponse].
  /// [privateBytesInKB] A rule based on private bytes.
  /// [requests] A rule based on total requests.
  /// [slowRequests] A rule based on request execution time.
  /// [slowRequestsWithPath] A rule based on multiple Slow Requests Rule with path
  /// [statusCodes] A rule based on status codes.
  /// [statusCodesRange] A rule based on status codes ranges.
  AutoHealTriggersResponse({
    this.privateBytesInKB,
    this.requests,
    this.slowRequests,
    this.slowRequestsWithPath,
    this.statusCodes,
    this.statusCodesRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateBytesInKB': ?privateBytesInKB,
      'requests': ?requests == null ? null : requests!.toMap(),
      'slowRequests': ?slowRequests == null ? null : slowRequests!.toMap(),
      'slowRequestsWithPath': ?slowRequestsWithPath == null ? null : pulumi.Input.encodeList<SlowRequestsBasedTriggerResponse, Map<String, dynamic>>(slowRequestsWithPath!, (value) => value.toMap()),
      'statusCodes': ?statusCodes == null ? null : pulumi.Input.encodeList<StatusCodesBasedTriggerResponse, Map<String, dynamic>>(statusCodes!, (value) => value.toMap()),
      'statusCodesRange': ?statusCodesRange == null ? null : pulumi.Input.encodeList<StatusCodesRangeBasedTriggerResponse, Map<String, dynamic>>(statusCodesRange!, (value) => value.toMap()),
    };
  }

  factory AutoHealTriggersResponse.fromMap(Map<String, dynamic> map) {
    return AutoHealTriggersResponse(
      privateBytesInKB: map['privateBytesInKB'] == null ? null : map['privateBytesInKB'] as int,
      requests: map['requests'] == null ? null : RequestsBasedTriggerResponse.fromMap((map['requests'] as Map).cast<String, dynamic>()),
      slowRequests: map['slowRequests'] == null ? null : SlowRequestsBasedTriggerResponse.fromMap((map['slowRequests'] as Map).cast<String, dynamic>()),
      slowRequestsWithPath: map['slowRequestsWithPath'] == null ? null : pulumi.Input.decodeList<SlowRequestsBasedTriggerResponse>(map['slowRequestsWithPath'], (value) => SlowRequestsBasedTriggerResponse.fromMap((value as Map).cast<String, dynamic>())),
      statusCodes: map['statusCodes'] == null ? null : pulumi.Input.decodeList<StatusCodesBasedTriggerResponse>(map['statusCodes'], (value) => StatusCodesBasedTriggerResponse.fromMap((value as Map).cast<String, dynamic>())),
      statusCodesRange: map['statusCodesRange'] == null ? null : pulumi.Input.decodeList<StatusCodesRangeBasedTriggerResponse>(map['statusCodesRange'], (value) => StatusCodesRangeBasedTriggerResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

