// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetVdmOptionsDashboardOptions {
  /// Specifies the status of your VDM engagement metrics collection. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? engagementMetrics;

  /// Creates a new [ConfigurationSetVdmOptionsDashboardOptions].
  /// [engagementMetrics] Specifies the status of your VDM engagement metrics collection. Valid values: `ENABLED`, `DISABLED`.
  ConfigurationSetVdmOptionsDashboardOptions({
    this.engagementMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engagementMetrics': ?engagementMetrics,
    };
  }

  factory ConfigurationSetVdmOptionsDashboardOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetVdmOptionsDashboardOptions(
      engagementMetrics: (() { final guardedValue = map['engagementMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

