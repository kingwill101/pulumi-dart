// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OperationLevelMetricsConfigEnumValue
class OperationLevelMetricsConfigEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [OperationLevelMetricsConfigEnumValueResponse].
  /// [value] Property value
  const OperationLevelMetricsConfigEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory OperationLevelMetricsConfigEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return OperationLevelMetricsConfigEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

