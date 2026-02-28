// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_parameters_date_time_parameter.dart';
import 'analysis_parameters_decimal_parameter.dart';
import 'analysis_parameters_integer_parameter.dart';
import 'analysis_parameters_string_parameter.dart';

class AnalysisParameters {
  /// A list of parameters that have a data type of date-time. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DateTimeParameter.html).
  final List<AnalysisParametersDateTimeParameter>? dateTimeParameters;

  /// A list of parameters that have a data type of decimal. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DecimalParameter.html).
  final List<AnalysisParametersDecimalParameter>? decimalParameters;

  /// A list of parameters that have a data type of integer. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_IntegerParameter.html).
  final List<AnalysisParametersIntegerParameter>? integerParameters;

  /// A list of parameters that have a data type of string. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_StringParameter.html).
  final List<AnalysisParametersStringParameter>? stringParameters;

  /// Creates a new [AnalysisParameters].
  /// [dateTimeParameters] A list of parameters that have a data type of date-time. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DateTimeParameter.html).
  /// [decimalParameters] A list of parameters that have a data type of decimal. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DecimalParameter.html).
  /// [integerParameters] A list of parameters that have a data type of integer. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_IntegerParameter.html).
  /// [stringParameters] A list of parameters that have a data type of string. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_StringParameter.html).
  AnalysisParameters({
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
              AnalysisParametersDateTimeParameter, Map<String, dynamic>>(
          dateTimeParametersValue, (value) => value.toMap());
    }
    final decimalParametersValue = decimalParameters;
    if (decimalParametersValue != null) {
      map['decimalParameters'] = pulumi.Input.encodeList<
              AnalysisParametersDecimalParameter, Map<String, dynamic>>(
          decimalParametersValue, (value) => value.toMap());
    }
    final integerParametersValue = integerParameters;
    if (integerParametersValue != null) {
      map['integerParameters'] = pulumi.Input.encodeList<
              AnalysisParametersIntegerParameter, Map<String, dynamic>>(
          integerParametersValue, (value) => value.toMap());
    }
    final stringParametersValue = stringParameters;
    if (stringParametersValue != null) {
      map['stringParameters'] = pulumi.Input.encodeList<
              AnalysisParametersStringParameter, Map<String, dynamic>>(
          stringParametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory AnalysisParameters.fromMap(Map<String, dynamic> map) {
    return AnalysisParameters(
      dateTimeParameters: map['dateTimeParameters'] == null
          ? null
          : pulumi.Input.decodeList<AnalysisParametersDateTimeParameter>(
              map['dateTimeParameters'],
              (value) => AnalysisParametersDateTimeParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      decimalParameters: map['decimalParameters'] == null
          ? null
          : pulumi.Input.decodeList<AnalysisParametersDecimalParameter>(
              map['decimalParameters'],
              (value) => AnalysisParametersDecimalParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      integerParameters: map['integerParameters'] == null
          ? null
          : pulumi.Input.decodeList<AnalysisParametersIntegerParameter>(
              map['integerParameters'],
              (value) => AnalysisParametersIntegerParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      stringParameters: map['stringParameters'] == null
          ? null
          : pulumi.Input.decodeList<AnalysisParametersStringParameter>(
              map['stringParameters'],
              (value) => AnalysisParametersStringParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
