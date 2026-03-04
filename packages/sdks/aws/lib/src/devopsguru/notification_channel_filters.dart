// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationChannelFilters {
  /// Events to receive notifications for. Valid values are `NEW_INSIGHT`, `CLOSED_INSIGHT`, `NEW_ASSOCIATION`, `SEVERITY_UPGRADED`, and `NEW_RECOMMENDATION`.
  final pulumi.Input<List<String>>? messageTypes;

  /// Severity levels to receive notifications for. Valid values are `LOW`, `MEDIUM`, and `HIGH`.
  final pulumi.Input<List<String>>? severities;

  /// Creates a new [NotificationChannelFilters].
  /// [messageTypes] Events to receive notifications for. Valid values are `NEW_INSIGHT`, `CLOSED_INSIGHT`, `NEW_ASSOCIATION`, `SEVERITY_UPGRADED`, and `NEW_RECOMMENDATION`.
  /// [severities] Severity levels to receive notifications for. Valid values are `LOW`, `MEDIUM`, and `HIGH`.
  NotificationChannelFilters({this.messageTypes, this.severities});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageTypes': ?messageTypes,
      'severities': ?severities,
    };
  }

  factory NotificationChannelFilters.fromMap(Map<String, dynamic> map) {
    return NotificationChannelFilters(
      messageTypes: (() {
        final guardedValue = map['messageTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      severities: (() {
        final guardedValue = map['severities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
