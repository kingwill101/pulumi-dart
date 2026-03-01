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
    return <String, dynamic>{
      'dateTimeParameters': ?dateTimeParameters == null ? null : pulumi.Input.encodeList<DashboardParametersDateTimeParameter, Map<String, dynamic>>(dateTimeParameters!, (value) => value.toMap()),
      'decimalParameters': ?decimalParameters == null ? null : pulumi.Input.encodeList<DashboardParametersDecimalParameter, Map<String, dynamic>>(decimalParameters!, (value) => value.toMap()),
      'integerParameters': ?integerParameters == null ? null : pulumi.Input.encodeList<DashboardParametersIntegerParameter, Map<String, dynamic>>(integerParameters!, (value) => value.toMap()),
      'stringParameters': ?stringParameters == null ? null : pulumi.Input.encodeList<DashboardParametersStringParameter, Map<String, dynamic>>(stringParameters!, (value) => value.toMap()),
    };
  }

  factory DashboardParameters.fromMap(Map<String, dynamic> map) {
    return DashboardParameters(
      dateTimeParameters: map['dateTimeParameters'] == null ? null : pulumi.Input.decodeList<DashboardParametersDateTimeParameter>(map['dateTimeParameters'], (value) => DashboardParametersDateTimeParameter.fromMap((value as Map).cast<String, dynamic>())),
      decimalParameters: map['decimalParameters'] == null ? null : pulumi.Input.decodeList<DashboardParametersDecimalParameter>(map['decimalParameters'], (value) => DashboardParametersDecimalParameter.fromMap((value as Map).cast<String, dynamic>())),
      integerParameters: map['integerParameters'] == null ? null : pulumi.Input.decodeList<DashboardParametersIntegerParameter>(map['integerParameters'], (value) => DashboardParametersIntegerParameter.fromMap((value as Map).cast<String, dynamic>())),
      stringParameters: map['stringParameters'] == null ? null : pulumi.Input.decodeList<DashboardParametersStringParameter>(map['stringParameters'], (value) => DashboardParametersStringParameter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

