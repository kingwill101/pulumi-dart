// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_response.dart';

/// Result data returned by listScheduleApplicable.
class ListScheduleApplicableResult {
  /// The link to the next page of items
  final String? nextLink;

  /// The Schedule items on this page
  final List<ScheduleResponse> value;

  /// Creates a new [ListScheduleApplicableResult].
  /// [nextLink] The link to the next page of items
  /// [value] The Schedule items on this page
  ListScheduleApplicableResult({this.nextLink, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<ScheduleResponse, Map<String, dynamic>>(
        value,
        (value) => value.toMap(),
      ),
    };
  }

  factory ListScheduleApplicableResult.fromMap(Map<String, dynamic> map) {
    return ListScheduleApplicableResult(
      nextLink: (() {
        final guardedValue = map['nextLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: pulumi.Input.decodeList<ScheduleResponse>(
        map['value']!,
        (value) =>
            ScheduleResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
