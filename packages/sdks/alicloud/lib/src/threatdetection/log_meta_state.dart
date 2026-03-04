// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LogMeta resources.
class LogMetaState {
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
  final pulumi.Input<String>? logMetaName;

  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [LogMetaState].
  /// [logMetaName] The name of the exclusive Logstore where logs are stored. Value:
  /// [status] The status of the resource
  LogMetaState({this.logMetaName, this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logMetaName': ?logMetaName, 'status': ?status};
  }

  factory LogMetaState.fromMap(Map<String, dynamic> map) {
    return LogMetaState(
      logMetaName: (() {
        final guardedValue = map['logMetaName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
