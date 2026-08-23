// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties related to the metrics container in the Azure Monitor Workspace
class AzureMonitorWorkspaceResponseMetrics {
  /// An internal identifier for the metrics container. Only to be used by the system
  final pulumi.Input<String> internalId;
  /// The Prometheus query endpoint for the Azure Monitor Workspace
  final pulumi.Input<String> prometheusQueryEndpoint;

  /// Creates a new [AzureMonitorWorkspaceResponseMetrics].
  /// [internalId] An internal identifier for the metrics container. Only to be used by the system
  /// [prometheusQueryEndpoint] The Prometheus query endpoint for the Azure Monitor Workspace
  const AzureMonitorWorkspaceResponseMetrics({
    required this.internalId,
    required this.prometheusQueryEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalId': internalId,
      'prometheusQueryEndpoint': prometheusQueryEndpoint,
    };
  }

  factory AzureMonitorWorkspaceResponseMetrics.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceResponseMetrics(
      internalId: pulumi.Input.fromValue(map['internalId'] as String),
      prometheusQueryEndpoint: pulumi.Input.fromValue(map['prometheusQueryEndpoint'] as String),
    );
  }
}
