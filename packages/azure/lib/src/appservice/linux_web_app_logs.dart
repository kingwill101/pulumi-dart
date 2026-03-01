// ignore_for_file: unused_element, unnecessary_cast

import 'linux_web_app_logs_application_logs.dart';
import 'linux_web_app_logs_http_logs.dart';

class LinuxWebAppLogs {
  /// A `application_logs` block as defined above.
  final LinuxWebAppLogsApplicationLogs? applicationLogs;
  /// Should detailed error messages be enabled?
  final bool? detailedErrorMessages;
  /// Should the failed request tracing be enabled?
  final bool? failedRequestTracing;
  /// An `http_logs` block as defined above.
  final LinuxWebAppLogsHttpLogs? httpLogs;

  /// Creates a new [LinuxWebAppLogs].
  /// [applicationLogs] A `application_logs` block as defined above.
  /// [detailedErrorMessages] Should detailed error messages be enabled?
  /// [failedRequestTracing] Should the failed request tracing be enabled?
  /// [httpLogs] An `http_logs` block as defined above.
  LinuxWebAppLogs({
    this.applicationLogs,
    this.detailedErrorMessages,
    this.failedRequestTracing,
    this.httpLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLogs': ?applicationLogs == null ? null : applicationLogs!.toMap(),
      'detailedErrorMessages': ?detailedErrorMessages,
      'failedRequestTracing': ?failedRequestTracing,
      'httpLogs': ?httpLogs == null ? null : httpLogs!.toMap(),
    };
  }

  factory LinuxWebAppLogs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppLogs(
      applicationLogs: map['applicationLogs'] == null ? null : LinuxWebAppLogsApplicationLogs.fromMap((map['applicationLogs'] as Map).cast<String, dynamic>()),
      detailedErrorMessages: map['detailedErrorMessages'] == null ? null : map['detailedErrorMessages'] as bool,
      failedRequestTracing: map['failedRequestTracing'] == null ? null : map['failedRequestTracing'] as bool,
      httpLogs: map['httpLogs'] == null ? null : LinuxWebAppLogsHttpLogs.fromMap((map['httpLogs'] as Map).cast<String, dynamic>()),
    );
  }
}

