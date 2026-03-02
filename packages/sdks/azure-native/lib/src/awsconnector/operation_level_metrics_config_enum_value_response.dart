// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OperationLevelMetricsConfigEnumValue
class OperationLevelMetricsConfigEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [OperationLevelMetricsConfigEnumValueResponse].
  /// [value] Property value
  OperationLevelMetricsConfigEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory OperationLevelMetricsConfigEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return OperationLevelMetricsConfigEnumValueResponse(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

