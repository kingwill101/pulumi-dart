// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_etls_etl_configuration_sink.dart';

class GetEtlsEtlConfiguration {
  /// Processing time start timestamp (accurate to the second). Enter 0 when the first log received from the source Logstore is consumed.
  final pulumi.Input<int> fromTime;
  /// Data processing syntax type.
  final pulumi.Input<String> lang;
  /// Source Logstore Name.
  final pulumi.Input<String> logstore;
  /// Advanced parameter configuration.
  final pulumi.Input<Map<String, String>> parameters;
  /// The ARN role that authorizes writing to the target Logstore.
  final pulumi.Input<String> roleArn;
  /// Processing script.
  final pulumi.Input<String> script;
  /// Processing result output target list.
  final pulumi.Input<List<GetEtlsEtlConfigurationSink>> sinks;
  /// Processing time end timestamp (accurate to seconds). When continuous consumption is stopped manually, fill in 0.
  final pulumi.Input<int> toTime;

  /// Creates a new [GetEtlsEtlConfiguration].
  /// [fromTime] Processing time start timestamp (accurate to the second). Enter 0 when the first log received from the source Logstore is consumed.
  /// [lang] Data processing syntax type.
  /// [logstore] Source Logstore Name.
  /// [parameters] Advanced parameter configuration.
  /// [roleArn] The ARN role that authorizes writing to the target Logstore.
  /// [script] Processing script.
  /// [sinks] Processing result output target list.
  /// [toTime] Processing time end timestamp (accurate to seconds). When continuous consumption is stopped manually, fill in 0.
  GetEtlsEtlConfiguration({
    required this.fromTime,
    required this.lang,
    required this.logstore,
    required this.parameters,
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
      'parameters': parameters,
      'roleArn': roleArn,
      'script': script,
      'sinks': pulumi.Input.mapInputValue<List<GetEtlsEtlConfigurationSink>, List<Map<String, dynamic>>>(sinks, (value) => pulumi.Input.encodeList<GetEtlsEtlConfigurationSink, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toTime': toTime,
    };
  }

  factory GetEtlsEtlConfiguration.fromMap(Map<String, dynamic> map) {
    return GetEtlsEtlConfiguration(
      fromTime: pulumi.Input.fromValue(map['fromTime'] as int),
      lang: pulumi.Input.fromValue(map['lang'] as String),
      logstore: pulumi.Input.fromValue(map['logstore'] as String),
      parameters: pulumi.Input.fromValue((map['parameters'] as Map).cast<String, String>()),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      script: pulumi.Input.fromValue(map['script'] as String),
      sinks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEtlsEtlConfigurationSink>(map['sinks']!, (value) => GetEtlsEtlConfigurationSink.fromMap((value as Map).cast<String, dynamic>()))),
      toTime: pulumi.Input.fromValue(map['toTime'] as int),
    );
  }
}

