// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProgressPropertiesResponse {
  /// The percentage complete of the copy operation.
  final pulumi.Input<String>? percentage;

  /// Creates a new [ProgressPropertiesResponse].
  /// [percentage] The percentage complete of the copy operation.
  ProgressPropertiesResponse({
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': ?percentage,
    };
  }

  factory ProgressPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProgressPropertiesResponse(
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

