// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationConformancePackInputParameter {
  /// The input key.
  final pulumi.Input<String> parameterName;
  /// The input value.
  final pulumi.Input<String> parameterValue;

  /// Creates a new [OrganizationConformancePackInputParameter].
  /// [parameterName] The input key.
  /// [parameterValue] The input value.
  const OrganizationConformancePackInputParameter({
    required this.parameterName,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterName': parameterName,
      'parameterValue': parameterValue,
    };
  }

  factory OrganizationConformancePackInputParameter.fromMap(Map<String, dynamic> map) {
    return OrganizationConformancePackInputParameter(
      parameterName: pulumi.Input.fromValue(map['parameterName'] as String),
      parameterValue: pulumi.Input.fromValue(map['parameterValue'] as String),
    );
  }
}

