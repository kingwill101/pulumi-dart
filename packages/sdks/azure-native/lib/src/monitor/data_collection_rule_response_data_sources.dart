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
      dataImports: map['dataImports'] == null ? null : (DataSourcesSpecResponseDataImports.fromMap((map['dataImports'] as Map).cast<String, dynamic>())).input(),
      extensions: map['extensions'] == null ? null : (pulumi.Input.decodeList<ExtensionDataSourceResponse>(map['extensions'], (value) => ExtensionDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      iisLogs: map['iisLogs'] == null ? null : (pulumi.Input.decodeList<IisLogsDataSourceResponse>(map['iisLogs'], (value) => IisLogsDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logFiles: map['logFiles'] == null ? null : (pulumi.Input.decodeList<LogFilesDataSourceResponse>(map['logFiles'], (value) => LogFilesDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      performanceCounters: map['performanceCounters'] == null ? null : (pulumi.Input.decodeList<PerfCounterDataSourceResponse>(map['performanceCounters'], (value) => PerfCounterDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      platformTelemetry: map['platformTelemetry'] == null ? null : (pulumi.Input.decodeList<PlatformTelemetryDataSourceResponse>(map['platformTelemetry'], (value) => PlatformTelemetryDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prometheusForwarder: map['prometheusForwarder'] == null ? null : (pulumi.Input.decodeList<PrometheusForwarderDataSourceResponse>(map['prometheusForwarder'], (value) => PrometheusForwarderDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      syslog: map['syslog'] == null ? null : (pulumi.Input.decodeList<SyslogDataSourceResponse>(map['syslog'], (value) => SyslogDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      windowsEventLogs: map['windowsEventLogs'] == null ? null : (pulumi.Input.decodeList<WindowsEventLogDataSourceResponse>(map['windowsEventLogs'], (value) => WindowsEventLogDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      windowsFirewallLogs: map['windowsFirewallLogs'] == null ? null : (pulumi.Input.decodeList<WindowsFirewallLogsDataSourceResponse>(map['windowsFirewallLogs'], (value) => WindowsFirewallLogsDataSourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

