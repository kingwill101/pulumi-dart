// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventBusLogConfig {
  /// Whether EventBridge include detailed event information in the records it generates. Valid values are `NONE` and `FULL`.
  final pulumi.Input<String>? includeDetail;

  /// Level of logging detail to include. Valid values are `OFF`, `ERROR`, `INFO`, and `TRACE`.
  final pulumi.Input<String>? level;

  /// Creates a new [EventBusLogConfig].
  /// [includeDetail] Whether EventBridge include detailed event information in the records it generates. Valid values are `NONE` and `FULL`.
  /// [level] Level of logging detail to include. Valid values are `OFF`, `ERROR`, `INFO`, and `TRACE`.
  EventBusLogConfig({this.includeDetail, this.level});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'includeDetail': ?includeDetail, 'level': ?level};
  }

  factory EventBusLogConfig.fromMap(Map<String, dynamic> map) {
    return EventBusLogConfig(
      includeDetail: (() {
        final guardedValue = map['includeDetail'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      level: (() {
        final guardedValue = map['level'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
