// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_response.dart';

/// Result data returned by listScheduleApplicable.
class ListScheduleApplicableResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The Schedule items on this page
  final List<ScheduleResponse>? value;

  /// Creates a new [ListScheduleApplicableResult].
  /// [nextLink] The link to the next page of items
  /// [value] The Schedule items on this page
  const ListScheduleApplicableResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ScheduleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListScheduleApplicableResult.fromMap(Map<String, dynamic> map) {
    return ListScheduleApplicableResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScheduleResponse>(guardedValue, (value) => ScheduleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
