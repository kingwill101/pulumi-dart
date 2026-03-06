// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'etl_configuration_sink.dart';

class EtlConfiguration {
  /// The start timestamp of the processing time (accurate to the second). Enter 0 to start consuming from the first log received in the source Logstore.
  final pulumi.Input<int> fromTime;
  /// The syntax type used for data transformation.
  final pulumi.Input<String> lang;
  /// The name of the destination Logstore.
  final pulumi.Input<String> logstore;
  /// Advanced parameter configuration.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The ARN of the role authorized to write to the destination Logstore.
  final pulumi.Input<String> roleArn;
  /// Processing script.
  final pulumi.Input<String> script;
  /// List of output destinations for processing results.   See `sink` below.
  final pulumi.Input<List<EtlConfigurationSink>> sinks;
  /// End timestamp of the processing time (accurate to the second). Enter 0 if processing continues until manually stopped.
  final pulumi.Input<int> toTime;

  /// Creates a new [EtlConfiguration].
  /// [fromTime] The start timestamp of the processing time (accurate to the second). Enter 0 to start consuming from the first log received in the source Logstore.
  /// [lang] The syntax type used for data transformation.
  /// [logstore] The name of the destination Logstore.
  /// [parameters] Advanced parameter configuration.
  /// [roleArn] The ARN of the role authorized to write to the destination Logstore.
  /// [script] Processing script.
  /// [sinks] List of output destinations for processing results.   See `sink` below.
  /// [toTime] End timestamp of the processing time (accurate to the second). Enter 0 if processing continues until manually stopped.
  const EtlConfiguration({
    required this.fromTime,
    required this.lang,
    required this.logstore,
    this.parameters,
    required this.roleArn,
    required this.script,
    required this.sinks,
    required this.toTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromTime': fromTime,
      'lang': lang,
      'logstore': logstore,
      'parameters': ?parameters,
      'roleArn': roleArn,
      'script': script,
      'sinks': pulumi.Input.mapInputValue<List<EtlConfigurationSink>, List<Map<String, dynamic>>>(sinks, (value) => pulumi.Input.encodeList<EtlConfigurationSink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toTime': toTime,
    };
  }

  factory EtlConfiguration.fromMap(Map<String, dynamic> map) {
    return EtlConfiguration(
      fromTime: pulumi.Input.fromValue(map['fromTime'] as int),
      lang: pulumi.Input.fromValue(map['lang'] as String),
      logstore: pulumi.Input.fromValue(map['logstore'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      script: pulumi.Input.fromValue(map['script'] as String),
      sinks: pulumi.Input.fromValue(pulumi.Input.decodeList<EtlConfigurationSink>(map['sinks']!, (value) => EtlConfigurationSink.fromMap((value as Map).cast<String, dynamic>()))),
      toTime: pulumi.Input.fromValue(map['toTime'] as int),
    );
  }
}

