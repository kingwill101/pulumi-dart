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
  final pulumi.Input<DataSourcesSpecDataImports>? dataImports;
  /// The list of Azure VM extension data source configurations.
  final pulumi.Input<List<ExtensionDataSource>>? extensions;
  /// The list of IIS logs source configurations.
  final pulumi.Input<List<IisLogsDataSource>>? iisLogs;
  /// The list of Log files source configurations.
  final pulumi.Input<List<LogFilesDataSource>>? logFiles;
  /// The list of performance counter data source configurations.
  final pulumi.Input<List<PerfCounterDataSource>>? performanceCounters;
  /// The list of platform telemetry configurations
  final pulumi.Input<List<PlatformTelemetryDataSource>>? platformTelemetry;
  /// The list of Prometheus forwarder data source configurations.
  final pulumi.Input<List<PrometheusForwarderDataSource>>? prometheusForwarder;
  /// The list of Syslog data source configurations.
  final pulumi.Input<List<SyslogDataSource>>? syslog;
  /// The list of Windows Event Log data source configurations.
  final pulumi.Input<List<WindowsEventLogDataSource>>? windowsEventLogs;
  /// The list of Windows Firewall logs source configurations.
  final pulumi.Input<List<WindowsFirewallLogsDataSource>>? windowsFirewallLogs;

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
  const DataCollectionRuleDataSources({
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
      'dataImports': ?pulumi.Input.mapOptionalInputValue<DataSourcesSpecDataImports, Map<String, dynamic>>(dataImports, (value) => value.toMap()),
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<ExtensionDataSource>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<ExtensionDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'iisLogs': ?pulumi.Input.mapOptionalInputValue<List<IisLogsDataSource>, List<Map<String, dynamic>>>(iisLogs, (value) => pulumi.Input.encodeList<IisLogsDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logFiles': ?pulumi.Input.mapOptionalInputValue<List<LogFilesDataSource>, List<Map<String, dynamic>>>(logFiles, (value) => pulumi.Input.encodeList<LogFilesDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'performanceCounters': ?pulumi.Input.mapOptionalInputValue<List<PerfCounterDataSource>, List<Map<String, dynamic>>>(performanceCounters, (value) => pulumi.Input.encodeList<PerfCounterDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platformTelemetry': ?pulumi.Input.mapOptionalInputValue<List<PlatformTelemetryDataSource>, List<Map<String, dynamic>>>(platformTelemetry, (value) => pulumi.Input.encodeList<PlatformTelemetryDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prometheusForwarder': ?pulumi.Input.mapOptionalInputValue<List<PrometheusForwarderDataSource>, List<Map<String, dynamic>>>(prometheusForwarder, (value) => pulumi.Input.encodeList<PrometheusForwarderDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'syslog': ?pulumi.Input.mapOptionalInputValue<List<SyslogDataSource>, List<Map<String, dynamic>>>(syslog, (value) => pulumi.Input.encodeList<SyslogDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsEventLogs': ?pulumi.Input.mapOptionalInputValue<List<WindowsEventLogDataSource>, List<Map<String, dynamic>>>(windowsEventLogs, (value) => pulumi.Input.encodeList<WindowsEventLogDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'windowsFirewallLogs': ?pulumi.Input.mapOptionalInputValue<List<WindowsFirewallLogsDataSource>, List<Map<String, dynamic>>>(windowsFirewallLogs, (value) => pulumi.Input.encodeList<WindowsFirewallLogsDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataCollectionRuleDataSources.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSources(
      dataImports: (() { final guardedValue = map['dataImports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataSourcesSpecDataImports.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExtensionDataSource>(guardedValue, (value) => ExtensionDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      iisLogs: (() { final guardedValue = map['iisLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IisLogsDataSource>(guardedValue, (value) => IisLogsDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logFiles: (() { final guardedValue = map['logFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogFilesDataSource>(guardedValue, (value) => LogFilesDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      performanceCounters: (() { final guardedValue = map['performanceCounters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PerfCounterDataSource>(guardedValue, (value) => PerfCounterDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      platformTelemetry: (() { final guardedValue = map['platformTelemetry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlatformTelemetryDataSource>(guardedValue, (value) => PlatformTelemetryDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      prometheusForwarder: (() { final guardedValue = map['prometheusForwarder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrometheusForwarderDataSource>(guardedValue, (value) => PrometheusForwarderDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      syslog: (() { final guardedValue = map['syslog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SyslogDataSource>(guardedValue, (value) => SyslogDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      windowsEventLogs: (() { final guardedValue = map['windowsEventLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsEventLogDataSource>(guardedValue, (value) => WindowsEventLogDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      windowsFirewallLogs: (() { final guardedValue = map['windowsFirewallLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsFirewallLogsDataSource>(guardedValue, (value) => WindowsFirewallLogsDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
