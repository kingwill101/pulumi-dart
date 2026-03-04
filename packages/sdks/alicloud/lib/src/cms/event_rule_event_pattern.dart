// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventRuleEventPattern {
  /// The type of the event-triggered alert rule. Valid values:
  /// - `StatusNotification`: fault notifications.
  /// - `Exception`: exceptions.
  /// - `Maintenance`: O&M.
  /// - `*`: all types.
  final pulumi.Input<List<String>>? eventTypeLists;

  /// The level of the event-triggered alert rule. Valid values:
  /// - `CRITICAL`: critical.
  /// - `WARN`: warning.
  /// - `INFO`: information.
  /// - `*`: all types.
  final pulumi.Input<List<String>>? levelLists;

  /// The name of the event-triggered alert rule.
  final pulumi.Input<List<String>>? nameLists;

  /// The type of the cloud service.
  final pulumi.Input<String> product;

  /// The SQL condition that is used to filter events. If the content of an event meets the specified SQL condition, an alert is automatically triggered.
  final pulumi.Input<String>? sqlFilter;

  /// Creates a new [EventRuleEventPattern].
  /// [eventTypeLists] The type of the event-triggered alert rule. Valid values:
  /// [levelLists] The level of the event-triggered alert rule. Valid values:
  /// [nameLists] The name of the event-triggered alert rule.
  /// [product] The type of the cloud service.
  /// [sqlFilter] The SQL condition that is used to filter events. If the content of an event meets the specified SQL condition, an alert is automatically triggered.
  EventRuleEventPattern({
    this.eventTypeLists,
    this.levelLists,
    this.nameLists,
    required this.product,
    this.sqlFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTypeLists': ?eventTypeLists,
      'levelLists': ?levelLists,
      'nameLists': ?nameLists,
      'product': product,
      'sqlFilter': ?sqlFilter,
    };
  }

  factory EventRuleEventPattern.fromMap(Map<String, dynamic> map) {
    return EventRuleEventPattern(
      eventTypeLists: (() {
        final guardedValue = map['eventTypeLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      levelLists: (() {
        final guardedValue = map['levelLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameLists: (() {
        final guardedValue = map['nameLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      product: pulumi.Input.fromValue(map['product'] as String),
      sqlFilter: (() {
        final guardedValue = map['sqlFilter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
