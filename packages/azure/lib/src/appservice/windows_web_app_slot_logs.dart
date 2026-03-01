// ignore_for_file: unused_element, unnecessary_cast

import 'windows_web_app_slot_logs_application_logs.dart';
import 'windows_web_app_slot_logs_http_logs.dart';

class WindowsWebAppSlotLogs {
  /// A `application_logs` block as defined above.
  final WindowsWebAppSlotLogsApplicationLogs? applicationLogs;
  /// Should detailed error messages be enabled.
  final bool? detailedErrorMessages;
  /// Should failed request tracing be enabled.
  final bool? failedRequestTracing;
  /// An `http_logs` block as defined above.
  final WindowsWebAppSlotLogsHttpLogs? httpLogs;

  /// Creates a new [WindowsWebAppSlotLogs].
  /// [applicationLogs] A `application_logs` block as defined above.
  /// [detailedErrorMessages] Should detailed error messages be enabled.
  /// [failedRequestTracing] Should failed request tracing be enabled.
  /// [httpLogs] An `http_logs` block as defined above.
  WindowsWebAppSlotLogs({
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

  factory WindowsWebAppSlotLogs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotLogs(
      applicationLogs: map['applicationLogs'] == null ? null : WindowsWebAppSlotLogsApplicationLogs.fromMap((map['applicationLogs'] as Map).cast<String, dynamic>()),
      detailedErrorMessages: map['detailedErrorMessages'] == null ? null : map['detailedErrorMessages'] as bool,
      failedRequestTracing: map['failedRequestTracing'] == null ? null : map['failedRequestTracing'] as bool,
      httpLogs: map['httpLogs'] == null ? null : WindowsWebAppSlotLogsHttpLogs.fromMap((map['httpLogs'] as Map).cast<String, dynamic>()),
    );
  }
}

