// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_parameters_date_time_parameter.dart';
import 'dashboard_parameters_decimal_parameter.dart';
import 'dashboard_parameters_integer_parameter.dart';
import 'dashboard_parameters_string_parameter.dart';

class DashboardParameters {
  /// A list of parameters that have a data type of date-time. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DateTimeParameter.html).
  final List<DashboardParametersDateTimeParameter>? dateTimeParameters;

  /// A list of parameters that have a data type of decimal. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DecimalParameter.html).
  final List<DashboardParametersDecimalParameter>? decimalParameters;

  /// A list of parameters that have a data type of integer. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_IntegerParameter.html).
  final List<DashboardParametersIntegerParameter>? integerParameters;

  /// A list of parameters that have a data type of string. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_StringParameter.html).
  final List<DashboardParametersStringParameter>? stringParameters;

  /// Creates a new [DashboardParameters].
  /// [dateTimeParameters] A list of parameters that have a data type of date-time. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DateTimeParameter.html).
  /// [decimalParameters] A list of parameters that have a data type of decimal. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DecimalParameter.html).
  /// [integerParameters] A list of parameters that have a data type of integer. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_IntegerParameter.html).
  /// [stringParameters] A list of parameters that have a data type of string. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_StringParameter.html).
  DashboardParameters({
    this.dateTimeParameters,
    this.decimalParameters,
    this.integerParameters,
    this.stringParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dateTimeParametersValue = dateTimeParameters;
    if (dateTimeParametersValue != null) {
      map['dateTimeParameters'] = pulumi.Input.encodeList<
              DashboardParametersDateTimeParameter, Map<String, dynamic>>(
          dateTimeParametersValue, (value) => value.toMap());
    }
    final decimalParametersValue = decimalParameters;
    if (decimalParametersValue != null) {
      map['decimalParameters'] = pulumi.Input.encodeList<
              DashboardParametersDecimalParameter, Map<String, dynamic>>(
          decimalParametersValue, (value) => value.toMap());
    }
    final integerParametersValue = integerParameters;
    if (integerParametersValue != null) {
      map['integerParameters'] = pulumi.Input.encodeList<
              DashboardParametersIntegerParameter, Map<String, dynamic>>(
          integerParametersValue, (value) => value.toMap());
    }
    final stringParametersValue = stringParameters;
    if (stringParametersValue != null) {
      map['stringParameters'] = pulumi.Input.encodeList<
              DashboardParametersStringParameter, Map<String, dynamic>>(
          stringParametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory DashboardParameters.fromMap(Map<String, dynamic> map) {
    return DashboardParameters(
      dateTimeParameters: map['dateTimeParameters'] == null
          ? null
          : pulumi.Input.decodeList<DashboardParametersDateTimeParameter>(
              map['dateTimeParameters'],
              (value) => DashboardParametersDateTimeParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      decimalParameters: map['decimalParameters'] == null
          ? null
          : pulumi.Input.decodeList<DashboardParametersDecimalParameter>(
              map['decimalParameters'],
              (value) => DashboardParametersDecimalParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      integerParameters: map['integerParameters'] == null
          ? null
          : pulumi.Input.decodeList<DashboardParametersIntegerParameter>(
              map['integerParameters'],
              (value) => DashboardParametersIntegerParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      stringParameters: map['stringParameters'] == null
          ? null
          : pulumi.Input.decodeList<DashboardParametersStringParameter>(
              map['stringParameters'],
              (value) => DashboardParametersStringParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
