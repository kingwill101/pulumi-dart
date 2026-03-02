// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_sql_application_configuration_input.dart';
import 'application_application_configuration_sql_application_configuration_output.dart';
import 'application_application_configuration_sql_application_configuration_reference_data_source.dart';

class ApplicationApplicationConfigurationSqlApplicationConfiguration {
  /// The input stream used by the application.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInput>? input;
  /// The destination streams used by the application.
  final pulumi.Input<List<ApplicationApplicationConfigurationSqlApplicationConfigurationOutput>>? outputs;
  /// The reference data source used by the application.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource>? referenceDataSource;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfiguration].
  /// [input] The input stream used by the application.
  /// [outputs] The destination streams used by the application.
  /// [referenceDataSource] The reference data source used by the application.
  ApplicationApplicationConfigurationSqlApplicationConfiguration({
    this.input,
    this.outputs,
    this.referenceDataSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationInput, Map<String, dynamic>>(input, (value) => value.toMap()),
      'outputs': ?pulumi.Input.mapOptionalInputValue<List<ApplicationApplicationConfigurationSqlApplicationConfigurationOutput>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<ApplicationApplicationConfigurationSqlApplicationConfigurationOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'referenceDataSource': ?pulumi.Input.mapOptionalInputValue<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource, Map<String, dynamic>>(referenceDataSource, (value) => value.toMap()),
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfiguration(
      input: map['input'] == null ? null : (ApplicationApplicationConfigurationSqlApplicationConfigurationInput.fromMap((map['input'] as Map).cast<String, dynamic>())).input(),
      outputs: map['outputs'] == null ? null : (pulumi.Input.decodeList<ApplicationApplicationConfigurationSqlApplicationConfigurationOutput>(map['outputs'], (value) => ApplicationApplicationConfigurationSqlApplicationConfigurationOutput.fromMap((value as Map).cast<String, dynamic>()))).input(),
      referenceDataSource: map['referenceDataSource'] == null ? null : (ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource.fromMap((map['referenceDataSource'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

