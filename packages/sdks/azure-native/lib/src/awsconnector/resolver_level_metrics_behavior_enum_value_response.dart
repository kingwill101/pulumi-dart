// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ResolverLevelMetricsBehaviorEnumValue
class ResolverLevelMetricsBehaviorEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [ResolverLevelMetricsBehaviorEnumValueResponse].
  /// [value] Property value
  ResolverLevelMetricsBehaviorEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory ResolverLevelMetricsBehaviorEnumValueResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResolverLevelMetricsBehaviorEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
