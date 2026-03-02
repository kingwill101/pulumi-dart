// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_workspace_logs_api_config_response.dart';
import 'cache_configuration_response.dart';
import 'concurrency_configuration_response.dart';

/// Azure Monitor Workspace Logs specific configurations.
class AzureMonitorWorkspaceLogsExporterResponse {
  /// API configurations for Azure Monitor workspace exporter.
  final pulumi.Input<AzureMonitorWorkspaceLogsApiConfigResponse> api;
  /// Cache configurations.
  final pulumi.Input<CacheConfigurationResponse>? cache;
  /// Concurrency configuration for the exporter.
  final pulumi.Input<ConcurrencyConfigurationResponse>? concurrency;

  /// Creates a new [AzureMonitorWorkspaceLogsExporterResponse].
  /// [api] API configurations for Azure Monitor workspace exporter.
  /// [cache] Cache configurations.
  /// [concurrency] Concurrency configuration for the exporter.
  AzureMonitorWorkspaceLogsExporterResponse({
    required this.api,
    this.cache,
    this.concurrency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': pulumi.Input.mapInputValue<AzureMonitorWorkspaceLogsApiConfigResponse, Map<String, dynamic>>(api, (value) => value.toMap()),
      'cache': ?pulumi.Input.mapOptionalInputValue<CacheConfigurationResponse, Map<String, dynamic>>(cache, (value) => value.toMap()),
      'concurrency': ?pulumi.Input.mapOptionalInputValue<ConcurrencyConfigurationResponse, Map<String, dynamic>>(concurrency, (value) => value.toMap()),
    };
  }

  factory AzureMonitorWorkspaceLogsExporterResponse.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceLogsExporterResponse(
      api: (AzureMonitorWorkspaceLogsApiConfigResponse.fromMap((map['api'] as Map).cast<String, dynamic>())).input(),
      cache: map['cache'] == null ? null : (CacheConfigurationResponse.fromMap((map['cache'] as Map).cast<String, dynamic>())).input(),
      concurrency: map['concurrency'] == null ? null : (ConcurrencyConfigurationResponse.fromMap((map['concurrency'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

