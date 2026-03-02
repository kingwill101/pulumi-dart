// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_parameters_date_time_parameter.dart';
import 'analysis_parameters_decimal_parameter.dart';
import 'analysis_parameters_integer_parameter.dart';
import 'analysis_parameters_string_parameter.dart';

class AnalysisParameters {
  /// A list of parameters that have a data type of date-time. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DateTimeParameter.html).
  final pulumi.Input<List<AnalysisParametersDateTimeParameter>>? dateTimeParameters;
  /// A list of parameters that have a data type of decimal. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DecimalParameter.html).
  final pulumi.Input<List<AnalysisParametersDecimalParameter>>? decimalParameters;
  /// A list of parameters that have a data type of integer. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_IntegerParameter.html).
  final pulumi.Input<List<AnalysisParametersIntegerParameter>>? integerParameters;
  /// A list of parameters that have a data type of string. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_StringParameter.html).
  final pulumi.Input<List<AnalysisParametersStringParameter>>? stringParameters;

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
    return <String, dynamic>{
      'dateTimeParameters': ?pulumi.Input.mapOptionalInputValue<List<AnalysisParametersDateTimeParameter>, List<Map<String, dynamic>>>(dateTimeParameters, (value) => pulumi.Input.encodeList<AnalysisParametersDateTimeParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'decimalParameters': ?pulumi.Input.mapOptionalInputValue<List<AnalysisParametersDecimalParameter>, List<Map<String, dynamic>>>(decimalParameters, (value) => pulumi.Input.encodeList<AnalysisParametersDecimalParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'integerParameters': ?pulumi.Input.mapOptionalInputValue<List<AnalysisParametersIntegerParameter>, List<Map<String, dynamic>>>(integerParameters, (value) => pulumi.Input.encodeList<AnalysisParametersIntegerParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringParameters': ?pulumi.Input.mapOptionalInputValue<List<AnalysisParametersStringParameter>, List<Map<String, dynamic>>>(stringParameters, (value) => pulumi.Input.encodeList<AnalysisParametersStringParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AnalysisParameters.fromMap(Map<String, dynamic> map) {
    return AnalysisParameters(
      dateTimeParameters: map['dateTimeParameters'] == null ? null : ((pulumi.Input.decodeList<AnalysisParametersDateTimeParameter>(map['dateTimeParameters']!, (value) => AnalysisParametersDateTimeParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      decimalParameters: map['decimalParameters'] == null ? null : ((pulumi.Input.decodeList<AnalysisParametersDecimalParameter>(map['decimalParameters']!, (value) => AnalysisParametersDecimalParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      integerParameters: map['integerParameters'] == null ? null : ((pulumi.Input.decodeList<AnalysisParametersIntegerParameter>(map['integerParameters']!, (value) => AnalysisParametersIntegerParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      stringParameters: map['stringParameters'] == null ? null : ((pulumi.Input.decodeList<AnalysisParametersStringParameter>(map['stringParameters']!, (value) => AnalysisParametersStringParameter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

