// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cloud_control_parameter_spec_validation_allowed_values_value/cloud_control_parameter_spec_validation_allowed_values_value.dart';

class CloudControlParameterSpecValidationAllowedValues {
  /// List of allowed values for the parameter.
  /// Structure is documented below.
  final List<CloudControlParameterSpecValidationAllowedValuesValue> values;

  CloudControlParameterSpecValidationAllowedValues({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = pulumi.Input.encodeList<
        CloudControlParameterSpecValidationAllowedValuesValue,
        Map<String, dynamic>>(values, (value) => value.toMap());
    return map;
  }

  factory CloudControlParameterSpecValidationAllowedValues.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecValidationAllowedValues(
      values: pulumi.Input.decodeList<
              CloudControlParameterSpecValidationAllowedValuesValue>(
          map['values'],
          (value) =>
              CloudControlParameterSpecValidationAllowedValuesValue.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
