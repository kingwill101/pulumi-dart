// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_sources_spec_data_imports.dart';
import 'extension_data_source.dart';
import 'iis_logs_data_source.dart';
import 'log_files_data_source.dart';
import 'perf_counter_data_source.dart';
import 'platform_telemetry_data_source.dart';
import 'prometheus_forwarder_data_source.dart';
import 'syslog_data_source.dart';
import 'windows_event_log_data_source.dart';
import 'windows_firewall_logs_data_source.dart';

/// The specification of data sources.
/// This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
class DataCollectionRuleDataSources {
  /// Specifications of pull based data sources
  final DataSourcesSpecDataImports? dataImports;
  /// The list of Azure VM extension data source configurations.
  final List<ExtensionDataSource>? extensions;
  /// The list of IIS logs source configurations.
  final List<IisLogsDataSource>? iisLogs;
  /// The list of Log files source configurations.
  final List<LogFilesDataSource>? logFiles;
  /// The list of performance counter data source configurations.
  final List<PerfCounterDataSource>? performanceCounters;
  /// The list of platform telemetry configurations
  final List<PlatformTelemetryDataSource>? platformTelemetry;
  /// The list of Prometheus forwarder data source configurations.
  final List<PrometheusForwarderDataSource>? prometheusForwarder;
  /// The list of Syslog data source configurations.
  final List<SyslogDataSource>? syslog;
  /// The list of Windows Event Log data source configurations.
  final List<WindowsEventLogDataSource>? windowsEventLogs;
  /// The list of Windows Firewall logs source configurations.
  final List<WindowsFirewallLogsDataSource>? windowsFirewallLogs;

  /// Creates a new [DataCollectionRuleDataSources].
  /// [dataImports] Specifications of pull based data sources
  /// [extensions] The list of Azure VM extension data source configurations.
  /// [iisLogs] The list of IIS logs source configurations.
  /// [logFiles] The list of Log files source configurations.
  /// [performanceCounters] The list of performance counter data source configurations.
  /// [platformTelemetry] The list of platform telemetry configurations
  /// [prometheusForwarder] The list of Prometheus forwarder data source configurations.
  /// [syslog] The list of Syslog data source configurations.
  /// [windowsEventLogs] The list of Windows Event Log data source configurations.
  /// [windowsFirewallLogs] The list of Windows Firewall logs source configurations.
  DataCollectionRuleDataSources({
    this.dataImports,
    this.extensions,
    this.iisLogs,
    this.logFiles,
    this.performanceCounters,
    this.platformTelemetry,
    this.prometheusForwarder,
    this.syslog,
    this.windowsEventLogs,
    this.windowsFirewallLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataImports': ?dataImports == null ? null : dataImports!.toMap(),
      'extensions': ?extensions == null ? null : pulumi.Input.encodeList<ExtensionDataSource, Map<String, dynamic>>(extensions!, (value) => value.toMap()),
      'iisLogs': ?iisLogs == null ? null : pulumi.Input.encodeList<IisLogsDataSource, Map<String, dynamic>>(iisLogs!, (value) => value.toMap()),
      'logFiles': ?logFiles == null ? null : pulumi.Input.encodeList<LogFilesDataSource, Map<String, dynamic>>(logFiles!, (value) => value.toMap()),
      'performanceCounters': ?performanceCounters == null ? null : pulumi.Input.encodeList<PerfCounterDataSource, Map<String, dynamic>>(performanceCounters!, (value) => value.toMap()),
      'platformTelemetry': ?platformTelemetry == null ? null : pulumi.Input.encodeList<PlatformTelemetryDataSource, Map<String, dynamic>>(platformTelemetry!, (value) => value.toMap()),
      'prometheusForwarder': ?prometheusForwarder == null ? null : pulumi.Input.encodeList<PrometheusForwarderDataSource, Map<String, dynamic>>(prometheusForwarder!, (value) => value.toMap()),
      'syslog': ?syslog == null ? null : pulumi.Input.encodeList<SyslogDataSource, Map<String, dynamic>>(syslog!, (value) => value.toMap()),
      'windowsEventLogs': ?windowsEventLogs == null ? null : pulumi.Input.encodeList<WindowsEventLogDataSource, Map<String, dynamic>>(windowsEventLogs!, (value) => value.toMap()),
      'windowsFirewallLogs': ?windowsFirewallLogs == null ? null : pulumi.Input.encodeList<WindowsFirewallLogsDataSource, Map<String, dynamic>>(windowsFirewallLogs!, (value) => value.toMap()),
    };
  }

  factory DataCollectionRuleDataSources.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSources(
      dataImports: map['dataImports'] == null ? null : DataSourcesSpecDataImports.fromMap((map['dataImports'] as Map).cast<String, dynamic>()),
      extensions: map['extensions'] == null ? null : pulumi.Input.decodeList<ExtensionDataSource>(map['extensions'], (value) => ExtensionDataSource.fromMap((value as Map).cast<String, dynamic>())),
      iisLogs: map['iisLogs'] == null ? null : pulumi.Input.decodeList<IisLogsDataSource>(map['iisLogs'], (value) => IisLogsDataSource.fromMap((value as Map).cast<String, dynamic>())),
      logFiles: map['logFiles'] == null ? null : pulumi.Input.decodeList<LogFilesDataSource>(map['logFiles'], (value) => LogFilesDataSource.fromMap((value as Map).cast<String, dynamic>())),
      performanceCounters: map['performanceCounters'] == null ? null : pulumi.Input.decodeList<PerfCounterDataSource>(map['performanceCounters'], (value) => PerfCounterDataSource.fromMap((value as Map).cast<String, dynamic>())),
      platformTelemetry: map['platformTelemetry'] == null ? null : pulumi.Input.decodeList<PlatformTelemetryDataSource>(map['platformTelemetry'], (value) => PlatformTelemetryDataSource.fromMap((value as Map).cast<String, dynamic>())),
      prometheusForwarder: map['prometheusForwarder'] == null ? null : pulumi.Input.decodeList<PrometheusForwarderDataSource>(map['prometheusForwarder'], (value) => PrometheusForwarderDataSource.fromMap((value as Map).cast<String, dynamic>())),
      syslog: map['syslog'] == null ? null : pulumi.Input.decodeList<SyslogDataSource>(map['syslog'], (value) => SyslogDataSource.fromMap((value as Map).cast<String, dynamic>())),
      windowsEventLogs: map['windowsEventLogs'] == null ? null : pulumi.Input.decodeList<WindowsEventLogDataSource>(map['windowsEventLogs'], (value) => WindowsEventLogDataSource.fromMap((value as Map).cast<String, dynamic>())),
      windowsFirewallLogs: map['windowsFirewallLogs'] == null ? null : pulumi.Input.decodeList<WindowsFirewallLogsDataSource>(map['windowsFirewallLogs'], (value) => WindowsFirewallLogsDataSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

