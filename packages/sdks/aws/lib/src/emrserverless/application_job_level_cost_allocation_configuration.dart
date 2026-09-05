// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationJobLevelCostAllocationConfiguration {
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ApplicationJobLevelCostAllocationConfiguration].
  /// [enabled] Optional.
  const ApplicationJobLevelCostAllocationConfiguration({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ApplicationJobLevelCostAllocationConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationJobLevelCostAllocationConfiguration(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
