// ignore_for_file: unused_element, unnecessary_cast

/// Represents a single hyperparameter to optimize.
class GoogleCloudMlV1ParameterSpecResponse {
  /// Required if type is `CATEGORICAL`. The list of possible categories.
  final List<String> categoricalValues;

  /// Required if type is `DISCRETE`. A list of feasible points. The list should be in strictly increasing order. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.
  final List<double> discreteValues;

  /// Required if type is `DOUBLE` or `INTEGER`. This field should be unset if type is `CATEGORICAL`. This value should be integers if type is `INTEGER`.
  final double maxValue;

  /// Required if type is `DOUBLE` or `INTEGER`. This field should be unset if type is `CATEGORICAL`. This value should be integers if type is INTEGER.
  final double minValue;

  /// The parameter name must be unique amongst all ParameterConfigs in a HyperparameterSpec message. E.g., "learning_rate".
  final String parameterName;

  /// Optional. How the parameter should be scaled to the hypercube. Leave unset for categorical parameters. Some kind of scaling is strongly recommended for real or integral parameters (e.g., `UNIT_LINEAR_SCALE`).
  final String scaleType;

  /// The type of the parameter.
  final String type;

  GoogleCloudMlV1ParameterSpecResponse({
    required this.categoricalValues,
    required this.discreteValues,
    required this.maxValue,
    required this.minValue,
    required this.parameterName,
    required this.scaleType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['categoricalValues'] = categoricalValues;
    map['discreteValues'] = discreteValues;
    map['maxValue'] = maxValue;
    map['minValue'] = minValue;
    map['parameterName'] = parameterName;
    map['scaleType'] = scaleType;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudMlV1ParameterSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1ParameterSpecResponse(
      categoricalValues: (map['categoricalValues'] as List).cast<String>(),
      discreteValues: (map['discreteValues'] as List).cast<double>(),
      maxValue: map['maxValue'] as double,
      minValue: map['minValue'] as double,
      parameterName: map['parameterName'] as String,
      scaleType: map['scaleType'] as String,
      type: map['type'] as String,
    );
  }
}
