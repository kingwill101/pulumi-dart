// ignore_for_file: unused_element, unnecessary_cast


/// Desired properties of the cluster.
class ClusterDesiredProperties {
  /// Desired level of diagnostic data emitted by the cluster.
  final String? diagnosticLevel;
  /// Desired state of Windows Server Subscription.
  final String? windowsServerSubscription;

  /// Creates a new [ClusterDesiredProperties].
  /// [diagnosticLevel] Desired level of diagnostic data emitted by the cluster.
  /// [windowsServerSubscription] Desired state of Windows Server Subscription.
  ClusterDesiredProperties({
    this.diagnosticLevel,
    this.windowsServerSubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticLevel': ?diagnosticLevel,
      'windowsServerSubscription': ?windowsServerSubscription,
    };
  }

  factory ClusterDesiredProperties.fromMap(Map<String, dynamic> map) {
    return ClusterDesiredProperties(
      diagnosticLevel: map['diagnosticLevel'] == null ? null : map['diagnosticLevel'] as String,
      windowsServerSubscription: map['windowsServerSubscription'] == null ? null : map['windowsServerSubscription'] as String,
    );
  }
}

