// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSIS execution parameter.
class SSISExecutionParameter {
  /// SSIS package execution parameter value. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> value;

  /// Creates a new [SSISExecutionParameter].
  /// [value] SSIS package execution parameter value. Type: string (or Expression with resultType string).
  const SSISExecutionParameter({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory SSISExecutionParameter.fromMap(Map<String, dynamic> map) {
    return SSISExecutionParameter(
      value: pulumi.Input.fromValue(map['value']),
    );
  }
}

