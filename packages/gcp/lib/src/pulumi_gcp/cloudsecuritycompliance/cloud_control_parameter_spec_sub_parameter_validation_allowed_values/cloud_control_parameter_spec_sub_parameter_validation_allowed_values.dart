// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cloud_control_parameter_spec_sub_parameter_validation_allowed_values_value/cloud_control_parameter_spec_sub_parameter_validation_allowed_values_value.dart';

class CloudControlParameterSpecSubParameterValidationAllowedValues {
  /// List of allowed values for the parameter.
  /// Structure is documented below.
  final List<CloudControlParameterSpecSubParameterValidationAllowedValuesValue>
      values;

  CloudControlParameterSpecSubParameterValidationAllowedValues({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = pulumi.Input.encodeList<
        CloudControlParameterSpecSubParameterValidationAllowedValuesValue,
        Map<String, dynamic>>(values, (value) => value.toMap());
    return map;
  }

  factory CloudControlParameterSpecSubParameterValidationAllowedValues.fromMap(
      Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterValidationAllowedValues(
      values: pulumi.Input.decodeList<
              CloudControlParameterSpecSubParameterValidationAllowedValuesValue>(
          map['values'],
          (value) =>
              CloudControlParameterSpecSubParameterValidationAllowedValuesValue
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
