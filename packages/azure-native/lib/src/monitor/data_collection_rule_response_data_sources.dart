// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_sources_spec_response_data_imports.dart';
import 'extension_data_source_response.dart';
import 'iis_logs_data_source_response.dart';
import 'log_files_data_source_response.dart';
import 'perf_counter_data_source_response.dart';
import 'platform_telemetry_data_source_response.dart';
import 'prometheus_forwarder_data_source_response.dart';
import 'syslog_data_source_response.dart';
import 'windows_event_log_data_source_response.dart';
import 'windows_firewall_logs_data_source_response.dart';

/// The specification of data sources.
/// This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
class DataCollectionRuleResponseDataSources {
  /// Specifications of pull based data sources
  final DataSourcesSpecResponseDataImports? dataImports;
  /// The list of Azure VM extension data source configurations.
  final List<ExtensionDataSourceResponse>? extensions;
  /// The list of IIS logs source configurations.
  final List<IisLogsDataSourceResponse>? iisLogs;
  /// The list of Log files source configurations.
  final List<LogFilesDataSourceResponse>? logFiles;
  /// The list of performance counter data source configurations.
  final List<PerfCounterDataSourceResponse>? performanceCounters;
  /// The list of platform telemetry configurations
  final List<PlatformTelemetryDataSourceResponse>? platformTelemetry;
  /// The list of Prometheus forwarder data source configurations.
  final List<PrometheusForwarderDataSourceResponse>? prometheusForwarder;
  /// The list of Syslog data source configurations.
  final List<SyslogDataSourceResponse>? syslog;
  /// The list of Windows Event Log data source configurations.
  final List<WindowsEventLogDataSourceResponse>? windowsEventLogs;
  /// The list of Windows Firewall logs source configurations.
  final List<WindowsFirewallLogsDataSourceResponse>? windowsFirewallLogs;

  /// Creates a new [DataCollectionRuleResponseDataSources].
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
  DataCollectionRuleResponseDataSources({
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
      'extensions': ?extensions == null ? null : pulumi.Input.encodeList<ExtensionDataSourceResponse, Map<String, dynamic>>(extensions!, (value) => value.toMap()),
      'iisLogs': ?iisLogs == null ? null : pulumi.Input.encodeList<IisLogsDataSourceResponse, Map<String, dynamic>>(iisLogs!, (value) => value.toMap()),
      'logFiles': ?logFiles == null ? null : pulumi.Input.encodeList<LogFilesDataSourceResponse, Map<String, dynamic>>(logFiles!, (value) => value.toMap()),
      'performanceCounters': ?performanceCounters == null ? null : pulumi.Input.encodeList<PerfCounterDataSourceResponse, Map<String, dynamic>>(performanceCounters!, (value) => value.toMap()),
      'platformTelemetry': ?platformTelemetry == null ? null : pulumi.Input.encodeList<PlatformTelemetryDataSourceResponse, Map<String, dynamic>>(platformTelemetry!, (value) => value.toMap()),
      'prometheusForwarder': ?prometheusForwarder == null ? null : pulumi.Input.encodeList<PrometheusForwarderDataSourceResponse, Map<String, dynamic>>(prometheusForwarder!, (value) => value.toMap()),
      'syslog': ?syslog == null ? null : pulumi.Input.encodeList<SyslogDataSourceResponse, Map<String, dynamic>>(syslog!, (value) => value.toMap()),
      'windowsEventLogs': ?windowsEventLogs == null ? null : pulumi.Input.encodeList<WindowsEventLogDataSourceResponse, Map<String, dynamic>>(windowsEventLogs!, (value) => value.toMap()),
      'windowsFirewallLogs': ?windowsFirewallLogs == null ? null : pulumi.Input.encodeList<WindowsFirewallLogsDataSourceResponse, Map<String, dynamic>>(windowsFirewallLogs!, (value) => value.toMap()),
    };
  }

  factory DataCollectionRuleResponseDataSources.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleResponseDataSources(
      dataImports: map['dataImports'] == null ? null : DataSourcesSpecResponseDataImports.fromMap((map['dataImports'] as Map).cast<String, dynamic>()),
      extensions: map['extensions'] == null ? null : pulumi.Input.decodeList<ExtensionDataSourceResponse>(map['extensions'], (value) => ExtensionDataSourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      iisLogs: map['iisLogs'] == null ? null : pulumi.Input.decodeList<IisLogsDataSourceResponse>(map['iisLogs'], (value) => IisLogsDataSourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      logFiles: map['logFiles'] == null ? null : pulumi.Input.decodeList<LogFilesDataSourceResponse>(map['logFiles'], (value) => LogFilesDataSourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      performanceCounters: map['performanceCounters'] == null ? null : pulumi.Input.decodeList<PerfCounterDataSourceResponse>(map['performanceCounters'], (value) => PerfCounterDataSourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      platformTelemetry: map['platformTelemetry'] == null ? null : pulumi.Input.decodeList<PlatformTelemetryDataSourceResponse>(map['platformTelemetry'], (value) => PlatformTelemetryDataSourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      prometheusForwarder: map['prometheusForwarder'] == null ? null : pulumi.Input.decodeList<PrometheusForwarderDataSourceResponse>(map['prometheusForwarder'], (value) => PrometheusForwarderDataSourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      syslog: map['syslog'] == null ? null : pulumi.Input.decodeList<SyslogDataSourceResponse>(map['syslog'], (value) => SyslogDataSourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      windowsEventLogs: map['windowsEventLogs'] == null ? null : pulumi.Input.decodeList<WindowsEventLogDataSourceResponse>(map['windowsEventLogs'], (value) => WindowsEventLogDataSourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      windowsFirewallLogs: map['windowsFirewallLogs'] == null ? null : pulumi.Input.decodeList<WindowsFirewallLogsDataSourceResponse>(map['windowsFirewallLogs'], (value) => WindowsFirewallLogsDataSourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

