// ignore_for_file: unused_element, unnecessary_cast


/// Desired properties of the cluster.
class ClusterDesiredPropertiesResponse {
  /// Desired level of diagnostic data emitted by the cluster.
  final String? diagnosticLevel;
  /// Desired state of Windows Server Subscription.
  final String? windowsServerSubscription;

  /// Creates a new [ClusterDesiredPropertiesResponse].
  /// [diagnosticLevel] Desired level of diagnostic data emitted by the cluster.
  /// [windowsServerSubscription] Desired state of Windows Server Subscription.
  ClusterDesiredPropertiesResponse({
    this.diagnosticLevel,
    this.windowsServerSubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticLevel': ?diagnosticLevel,
      'windowsServerSubscription': ?windowsServerSubscription,
    };
  }

  factory ClusterDesiredPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ClusterDesiredPropertiesResponse(
      diagnosticLevel: map['diagnosticLevel'] == null ? null : map['diagnosticLevel'] as String,
      windowsServerSubscription: map['windowsServerSubscription'] == null ? null : map['windowsServerSubscription'] as String,
    );
  }
}

