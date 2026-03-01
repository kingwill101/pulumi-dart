// ignore_for_file: unused_element, unnecessary_cast


/// Properties related to the metrics container in the Azure Monitor Workspace
class AzureMonitorWorkspaceResponseMetrics {
  /// An internal identifier for the metrics container. Only to be used by the system
  final String internalId;
  /// The Prometheus query endpoint for the Azure Monitor Workspace
  final String prometheusQueryEndpoint;

  /// Creates a new [AzureMonitorWorkspaceResponseMetrics].
  /// [internalId] An internal identifier for the metrics container. Only to be used by the system
  /// [prometheusQueryEndpoint] The Prometheus query endpoint for the Azure Monitor Workspace
  AzureMonitorWorkspaceResponseMetrics({
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
      internalId: map['internalId'] as String,
      prometheusQueryEndpoint: map['prometheusQueryEndpoint'] as String,
    );
  }
}

