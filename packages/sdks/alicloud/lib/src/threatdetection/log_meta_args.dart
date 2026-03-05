// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_log_meta_log_meta_args_doc}
/// The set of arguments for LogMeta.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_log_meta_log_meta_args_doc}
class LogMetaArgs {
  /// The name of the exclusive Logstore where logs are stored. Value:
  /// - aegis-log-client: client event log
  /// - aegis-log-crack: Brute Force log
  /// - aegis-log-dns-query:DNS request log
  /// - aegis-log-login: login log
  /// - aegis-log-network: network connection log
  /// - aegis-log-process: process startup log
  /// - aegis-snapshot-host: account snapshot log
  /// - aegis-snapshot-port: port snapshot log
  /// - aegis-snapshot-process: process snapshot log
  /// - local-dns: local DNS log
  /// - sas-log-dns:DNS resolution log
  /// - sas-log-http:WEB access log
  /// - sas-log-session: Web session log
  /// - sas-security-log: alarm log
  /// - sas-vul-log: Vulnerability log
  /// - sas-cspm-log: Cloud platform configuration check log
  /// - sas-hc-log: baseline log
  /// - sas-rasp-log: Application Protection Log
  /// - sas-filedetect-log: file detection log
  /// - sas-net-block: Network Defense Log
  final pulumi.Input<String> logMetaName;
  /// The status of the resource
  final pulumi.Input<String> status;

  /// Creates a new [LogMetaArgs].
  /// [logMetaName] The name of the exclusive Logstore where logs are stored. Value:
  /// [status] The status of the resource
  LogMetaArgs({
    required this.logMetaName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logMetaName': logMetaName,
      'status': status,
    };
  }

  factory LogMetaArgs.fromMap(Map<String, dynamic> map) {
    return LogMetaArgs(
      logMetaName: pulumi.Input.fromValue(map['logMetaName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

