// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_application_configuration_sql_application_configuration_input.dart';
import 'application_application_configuration_sql_application_configuration_output.dart';
import 'application_application_configuration_sql_application_configuration_reference_data_source.dart';

class ApplicationApplicationConfigurationSqlApplicationConfiguration {
  /// Input stream used by the application. See `input` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationInput?>? input;
  /// Destination streams used by the application. See `output` Block below.
  final pulumi.Input<List<ApplicationApplicationConfigurationSqlApplicationConfigurationOutput>?>? outputs;
  /// Reference data source used by the application. See `referenceDataSource` Block below.
  final pulumi.Input<ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource?>? referenceDataSource;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfiguration].
  /// [input] Input stream used by the application. See `input` Block below.
  /// [outputs] Destination streams used by the application. See `output` Block below.
  /// [referenceDataSource] Reference data source used by the application. See `referenceDataSource` Block below.
  const ApplicationApplicationConfigurationSqlApplicationConfiguration({
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
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationApplicationConfigurationSqlApplicationConfigurationOutput>(guardedValue, (value) => ApplicationApplicationConfigurationSqlApplicationConfigurationOutput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      referenceDataSource: (() { final guardedValue = map['referenceDataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApplicationConfigurationSqlApplicationConfigurationReferenceDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
