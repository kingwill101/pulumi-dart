// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Desired properties of the cluster.
class ClusterDesiredProperties {
  /// Desired level of diagnostic data emitted by the cluster.
  final pulumi.Input<String>? diagnosticLevel;
  /// Desired state of Windows Server Subscription.
  final pulumi.Input<String>? windowsServerSubscription;

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
      diagnosticLevel: map['diagnosticLevel'] == null ? null : (map['diagnosticLevel']! as String).input(),
      windowsServerSubscription: map['windowsServerSubscription'] == null ? null : (map['windowsServerSubscription']! as String).input(),
    );
  }
}

