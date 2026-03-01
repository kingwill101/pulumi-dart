// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'requests_based_trigger.dart';
import 'slow_requests_based_trigger.dart';
import 'status_codes_based_trigger.dart';
import 'status_codes_range_based_trigger.dart';

/// Triggers for auto-heal.
class AutoHealTriggers {
  /// A rule based on private bytes.
  final int? privateBytesInKB;
  /// A rule based on total requests.
  final RequestsBasedTrigger? requests;
  /// A rule based on request execution time.
  final SlowRequestsBasedTrigger? slowRequests;
  /// A rule based on multiple Slow Requests Rule with path
  final List<SlowRequestsBasedTrigger>? slowRequestsWithPath;
  /// A rule based on status codes.
  final List<StatusCodesBasedTrigger>? statusCodes;
  /// A rule based on status codes ranges.
  final List<StatusCodesRangeBasedTrigger>? statusCodesRange;

  /// Creates a new [AutoHealTriggers].
  /// [privateBytesInKB] A rule based on private bytes.
  /// [requests] A rule based on total requests.
  /// [slowRequests] A rule based on request execution time.
  /// [slowRequestsWithPath] A rule based on multiple Slow Requests Rule with path
  /// [statusCodes] A rule based on status codes.
  /// [statusCodesRange] A rule based on status codes ranges.
  AutoHealTriggers({
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
      'slowRequestsWithPath': ?slowRequestsWithPath == null ? null : pulumi.Input.encodeList<SlowRequestsBasedTrigger, Map<String, dynamic>>(slowRequestsWithPath!, (value) => value.toMap()),
      'statusCodes': ?statusCodes == null ? null : pulumi.Input.encodeList<StatusCodesBasedTrigger, Map<String, dynamic>>(statusCodes!, (value) => value.toMap()),
      'statusCodesRange': ?statusCodesRange == null ? null : pulumi.Input.encodeList<StatusCodesRangeBasedTrigger, Map<String, dynamic>>(statusCodesRange!, (value) => value.toMap()),
    };
  }

  factory AutoHealTriggers.fromMap(Map<String, dynamic> map) {
    return AutoHealTriggers(
      privateBytesInKB: map['privateBytesInKB'] == null ? null : map['privateBytesInKB'] as int,
      requests: map['requests'] == null ? null : RequestsBasedTrigger.fromMap((map['requests'] as Map).cast<String, dynamic>()),
      slowRequests: map['slowRequests'] == null ? null : SlowRequestsBasedTrigger.fromMap((map['slowRequests'] as Map).cast<String, dynamic>()),
      slowRequestsWithPath: map['slowRequestsWithPath'] == null ? null : pulumi.Input.decodeList<SlowRequestsBasedTrigger>(map['slowRequestsWithPath'], (value) => SlowRequestsBasedTrigger.fromMap((value as Map).cast<String, dynamic>())),
      statusCodes: map['statusCodes'] == null ? null : pulumi.Input.decodeList<StatusCodesBasedTrigger>(map['statusCodes'], (value) => StatusCodesBasedTrigger.fromMap((value as Map).cast<String, dynamic>())),
      statusCodesRange: map['statusCodesRange'] == null ? null : pulumi.Input.decodeList<StatusCodesRangeBasedTrigger>(map['statusCodesRange'], (value) => StatusCodesRangeBasedTrigger.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

