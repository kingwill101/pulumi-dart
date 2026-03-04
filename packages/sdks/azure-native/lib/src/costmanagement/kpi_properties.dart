// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Each KPI must contain a 'type' and 'enabled' key.
class KpiProperties {
  /// show the KPI in the UI?
  final pulumi.Input<bool>? enabled;

  /// ID of resource related to metric (budget).
  final pulumi.Input<String>? id;

  /// KPI type (Forecast, Budget).
  final pulumi.Input<String>? type;

  /// Creates a new [KpiProperties].
  /// [enabled] show the KPI in the UI?
  /// [id] ID of resource related to metric (budget).
  /// [type] KPI type (Forecast, Budget).
  KpiProperties({this.enabled, this.id, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled, 'id': ?id, 'type': ?type};
  }

  factory KpiProperties.fromMap(Map<String, dynamic> map) {
    return KpiProperties(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
