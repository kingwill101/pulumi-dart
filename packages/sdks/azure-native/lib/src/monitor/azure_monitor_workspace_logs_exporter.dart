// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_workspace_logs_api_config.dart';
import 'cache_configuration.dart';
import 'concurrency_configuration.dart';

/// Azure Monitor Workspace Logs specific configurations.
class AzureMonitorWorkspaceLogsExporter {
  /// API configurations for Azure Monitor workspace exporter.
  final pulumi.Input<AzureMonitorWorkspaceLogsApiConfig> api;
  /// Cache configurations.
  final pulumi.Input<CacheConfiguration>? cache;
  /// Concurrency configuration for the exporter.
  final pulumi.Input<ConcurrencyConfiguration>? concurrency;

  /// Creates a new [AzureMonitorWorkspaceLogsExporter].
  /// [api] API configurations for Azure Monitor workspace exporter.
  /// [cache] Cache configurations.
  /// [concurrency] Concurrency configuration for the exporter.
  const AzureMonitorWorkspaceLogsExporter({
    required this.api,
    this.cache,
    this.concurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': pulumi.Input.mapInputValue<AzureMonitorWorkspaceLogsApiConfig, Map<String, dynamic>>(api, (value) => value.toMap()),
      'cache': ?pulumi.Input.mapOptionalInputValue<CacheConfiguration, Map<String, dynamic>>(cache, (value) => value.toMap()),
      'concurrency': ?pulumi.Input.mapOptionalInputValue<ConcurrencyConfiguration, Map<String, dynamic>>(concurrency, (value) => value.toMap()),
    };
  }

  factory AzureMonitorWorkspaceLogsExporter.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceLogsExporter(
      api: pulumi.Input.fromValue(AzureMonitorWorkspaceLogsApiConfig.fromMap((map['api']! as Map).cast<String, dynamic>())),
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      concurrency: (() { final guardedValue = map['concurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConcurrencyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
