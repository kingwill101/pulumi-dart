// ignore_for_file: unused_element, unnecessary_cast

import 'azure_monitor_workspace_logs_api_config.dart';
import 'cache_configuration.dart';
import 'concurrency_configuration.dart';

/// Azure Monitor Workspace Logs specific configurations.
class AzureMonitorWorkspaceLogsExporter {
  /// API configurations for Azure Monitor workspace exporter.
  final AzureMonitorWorkspaceLogsApiConfig api;
  /// Cache configurations.
  final CacheConfiguration? cache;
  /// Concurrency configuration for the exporter.
  final ConcurrencyConfiguration? concurrency;

  /// Creates a new [AzureMonitorWorkspaceLogsExporter].
  /// [api] API configurations for Azure Monitor workspace exporter.
  /// [cache] Cache configurations.
  /// [concurrency] Concurrency configuration for the exporter.
  AzureMonitorWorkspaceLogsExporter({
    required this.api,
    this.cache,
    this.concurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': api.toMap(),
      'cache': ?cache == null ? null : cache!.toMap(),
      'concurrency': ?concurrency == null ? null : concurrency!.toMap(),
    };
  }

  factory AzureMonitorWorkspaceLogsExporter.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceLogsExporter(
      api: AzureMonitorWorkspaceLogsApiConfig.fromMap((map['api'] as Map).cast<String, dynamic>()),
      cache: map['cache'] == null ? null : CacheConfiguration.fromMap((map['cache'] as Map).cast<String, dynamic>()),
      concurrency: map['concurrency'] == null ? null : ConcurrencyConfiguration.fromMap((map['concurrency'] as Map).cast<String, dynamic>()),
    );
  }
}

