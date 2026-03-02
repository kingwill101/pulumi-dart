// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Each KPI must contain a 'type' and 'enabled' key.
class KpiPropertiesResponse {
  /// show the KPI in the UI?
  final pulumi.Input<bool>? enabled;
  /// ID of resource related to metric (budget).
  final pulumi.Input<String>? id;
  /// KPI type (Forecast, Budget).
  final pulumi.Input<String>? type;

  /// Creates a new [KpiPropertiesResponse].
  /// [enabled] show the KPI in the UI?
  /// [id] ID of resource related to metric (budget).
  /// [type] KPI type (Forecast, Budget).
  KpiPropertiesResponse({
    this.enabled,
    this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'id': ?id,
      'type': ?type,
    };
  }

  factory KpiPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KpiPropertiesResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

