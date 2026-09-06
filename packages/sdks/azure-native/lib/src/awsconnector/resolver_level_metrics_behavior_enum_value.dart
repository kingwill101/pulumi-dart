// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ResolverLevelMetricsBehaviorEnumValue
class ResolverLevelMetricsBehaviorEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ResolverLevelMetricsBehaviorEnumValue].
  /// [value] Property value
  const ResolverLevelMetricsBehaviorEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResolverLevelMetricsBehaviorEnumValue.fromMap(Map<String, dynamic> map) {
    return ResolverLevelMetricsBehaviorEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
