// ignore_for_file: unused_element, unnecessary_cast

import 'insights_config_runtime_config_app_hub_workload.dart';
import 'insights_config_runtime_config_gke_workload.dart';

class InsightsConfigRuntimeConfig {
  /// AppHubWorkload represents the App Hub Workload.
  /// Structure is documented below.
  final InsightsConfigRuntimeConfigAppHubWorkload? appHubWorkload;

  /// GKEWorkload represents the Google Kubernetes Engine runtime.
  /// Structure is documented below.
  final InsightsConfigRuntimeConfigGkeWorkload? gkeWorkload;

  /// (Output)
  /// The state of the Runtime.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// LINKED
  /// UNLINKED
  final String? state;

  /// The URI of the runtime configuration.
  /// For GKE, this is the cluster name.
  /// For Cloud Run, this is the service name.
  final String uri;

  /// Creates a new [InsightsConfigRuntimeConfig].
  /// [appHubWorkload] AppHubWorkload represents the App Hub Workload.
  /// [gkeWorkload] GKEWorkload represents the Google Kubernetes Engine runtime.
  /// [state] (Output)
  /// [uri] The URI of the runtime configuration.
  InsightsConfigRuntimeConfig({
    this.appHubWorkload,
    this.gkeWorkload,
    this.state,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appHubWorkloadValue = appHubWorkload;
    if (appHubWorkloadValue != null) {
      map['appHubWorkload'] = appHubWorkloadValue.toMap();
    }
    final gkeWorkloadValue = gkeWorkload;
    if (gkeWorkloadValue != null) {
      map['gkeWorkload'] = gkeWorkloadValue.toMap();
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    map['uri'] = uri;
    return map;
  }

  factory InsightsConfigRuntimeConfig.fromMap(Map<String, dynamic> map) {
    return InsightsConfigRuntimeConfig(
      appHubWorkload: map['appHubWorkload'] == null
          ? null
          : InsightsConfigRuntimeConfigAppHubWorkload.fromMap(
              (map['appHubWorkload'] as Map).cast<String, dynamic>()),
      gkeWorkload: map['gkeWorkload'] == null
          ? null
          : InsightsConfigRuntimeConfigGkeWorkload.fromMap(
              (map['gkeWorkload'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      uri: map['uri'] as String,
    );
  }
}
