// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_parameters_date_time_parameter.dart';
import 'dashboard_parameters_decimal_parameter.dart';
import 'dashboard_parameters_integer_parameter.dart';
import 'dashboard_parameters_string_parameter.dart';

class DashboardParameters {
  /// A list of parameters that have a data type of date-time. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DateTimeParameter.html).
  final pulumi.Input<List<DashboardParametersDateTimeParameter>>? dateTimeParameters;
  /// A list of parameters that have a data type of decimal. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DecimalParameter.html).
  final pulumi.Input<List<DashboardParametersDecimalParameter>>? decimalParameters;
  /// A list of parameters that have a data type of integer. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_IntegerParameter.html).
  final pulumi.Input<List<DashboardParametersIntegerParameter>>? integerParameters;
  /// A list of parameters that have a data type of string. See [AWS API Documentation for complete description](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_StringParameter.html).
  final pulumi.Input<List<DashboardParametersStringParameter>>? stringParameters;

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
      'dateTimeParameters': ?pulumi.Input.mapOptionalInputValue<List<DashboardParametersDateTimeParameter>, List<Map<String, dynamic>>>(dateTimeParameters, (value) => pulumi.Input.encodeList<DashboardParametersDateTimeParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'decimalParameters': ?pulumi.Input.mapOptionalInputValue<List<DashboardParametersDecimalParameter>, List<Map<String, dynamic>>>(decimalParameters, (value) => pulumi.Input.encodeList<DashboardParametersDecimalParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'integerParameters': ?pulumi.Input.mapOptionalInputValue<List<DashboardParametersIntegerParameter>, List<Map<String, dynamic>>>(integerParameters, (value) => pulumi.Input.encodeList<DashboardParametersIntegerParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stringParameters': ?pulumi.Input.mapOptionalInputValue<List<DashboardParametersStringParameter>, List<Map<String, dynamic>>>(stringParameters, (value) => pulumi.Input.encodeList<DashboardParametersStringParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DashboardParameters.fromMap(Map<String, dynamic> map) {
    return DashboardParameters(
      dateTimeParameters: (() { final guardedValue = map['dateTimeParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardParametersDateTimeParameter>(guardedValue, (value) => DashboardParametersDateTimeParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      decimalParameters: (() { final guardedValue = map['decimalParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardParametersDecimalParameter>(guardedValue, (value) => DashboardParametersDecimalParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      integerParameters: (() { final guardedValue = map['integerParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardParametersIntegerParameter>(guardedValue, (value) => DashboardParametersIntegerParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stringParameters: (() { final guardedValue = map['stringParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DashboardParametersStringParameter>(guardedValue, (value) => DashboardParametersStringParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

