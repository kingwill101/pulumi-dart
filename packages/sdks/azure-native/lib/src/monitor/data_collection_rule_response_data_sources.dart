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
  final pulumi.Input<DataSourcesSpecResponseDataImports>? dataImports;
  /// The list of Azure VM extension data source configurations.
  final pulumi.Input<List<ExtensionDataSourceResponse>>? extensions;
  /// The list of IIS logs source configurations.
  final pulumi.Input<List<IisLogsDataSourceResponse>>? iisLogs;
  /// The list of Log files source configurations.
  final pulumi.Input<List<LogFilesDataSourceResponse>>? logFiles;
  /// The list of performance counter data source configurations.
  final pulumi.Input<List<PerfCounterDataSourceResponse>>? performanceCounters;
  /// The list of platform telemetry configurations
  final pulumi.Input<List<PlatformTelemetryDataSourceResponse>>? platformTelemetry;
  /// The list of Prometheus forwarder data source configurations.
  final pulumi.Input<List<PrometheusForwarderDataSourceResponse>>? prometheusForwarder;
  /// The list of Syslog data source configurations.
  final pulumi.Input<List<SyslogDataSourceResponse>>? syslog;
  /// The list of Windows Event Log data source configurations.
  final pulumi.Input<List<WindowsEventLogDataSourceResponse>>? windowsEventLogs;
  /// The list of Windows Firewall logs source configurations.
  final pulumi.Input<List<WindowsFirewallLogsDataSourceResponse>>? windowsFirewallLogs;

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
  const DataCollectionRuleResponseDataSources({
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
      'dataImports': ?pulumi.Input.mapOptionalInputValue<DataSourcesSpecResponseDataImports, Map<String, dynamic>>(dataImports, (value) => value.toMap()),
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<ExtensionDataSourceResponse>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<ExtensionDataSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'iisLogs': ?pulumi.Input.mapOptionalInputValue<List<IisLogsDataSourceResponse>, List<Map<String, dynamic>>>(iisLogs, (value) => pulumi.Input.encodeList<IisLogsDataSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logFiles': ?pulumi.Input.mapOptionalInputValue<List<LogFilesDataSourceResponse>, List<Map<String, dynamic>>>(logFiles, (value) => pulumi.Input.encodeList<LogFilesDataSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'performanceCounters': ?pulumi.Input.mapOptionalInputValue<List<PerfCounterDataSourceResponse>, List<Map<String, dynamic>>>(performanceCounters, (value) => pulumi.Input.encodeList<PerfCounterDataSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformTelemetry': ?pulumi.Input.mapOptionalInputValue<List<PlatformTelemetryDataSourceResponse>, List<Map<String, dynamic>>>(platformTelemetry, (value) => pulumi.Input.encodeList<PlatformTelemetryDataSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prometheusForwarder': ?pulumi.Input.mapOptionalInputValue<List<PrometheusForwarderDataSourceResponse>, List<Map<String, dynamic>>>(prometheusForwarder, (value) => pulumi.Input.encodeList<PrometheusForwarderDataSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'syslog': ?pulumi.Input.mapOptionalInputValue<List<SyslogDataSourceResponse>, List<Map<String, dynamic>>>(syslog, (value) => pulumi.Input.encodeList<SyslogDataSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsEventLogs': ?pulumi.Input.mapOptionalInputValue<List<WindowsEventLogDataSourceResponse>, List<Map<String, dynamic>>>(windowsEventLogs, (value) => pulumi.Input.encodeList<WindowsEventLogDataSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsFirewallLogs': ?pulumi.Input.mapOptionalInputValue<List<WindowsFirewallLogsDataSourceResponse>, List<Map<String, dynamic>>>(windowsFirewallLogs, (value) => pulumi.Input.encodeList<WindowsFirewallLogsDataSourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataCollectionRuleResponseDataSources.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleResponseDataSources(
      dataImports: (() { final guardedValue = map['dataImports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourcesSpecResponseDataImports.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExtensionDataSourceResponse>(guardedValue, (value) => ExtensionDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      iisLogs: (() { final guardedValue = map['iisLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IisLogsDataSourceResponse>(guardedValue, (value) => IisLogsDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logFiles: (() { final guardedValue = map['logFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogFilesDataSourceResponse>(guardedValue, (value) => LogFilesDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      performanceCounters: (() { final guardedValue = map['performanceCounters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PerfCounterDataSourceResponse>(guardedValue, (value) => PerfCounterDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      platformTelemetry: (() { final guardedValue = map['platformTelemetry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlatformTelemetryDataSourceResponse>(guardedValue, (value) => PlatformTelemetryDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      prometheusForwarder: (() { final guardedValue = map['prometheusForwarder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrometheusForwarderDataSourceResponse>(guardedValue, (value) => PrometheusForwarderDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      syslog: (() { final guardedValue = map['syslog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SyslogDataSourceResponse>(guardedValue, (value) => SyslogDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      windowsEventLogs: (() { final guardedValue = map['windowsEventLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsEventLogDataSourceResponse>(guardedValue, (value) => WindowsEventLogDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      windowsFirewallLogs: (() { final guardedValue = map['windowsFirewallLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsFirewallLogsDataSourceResponse>(guardedValue, (value) => WindowsFirewallLogsDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
