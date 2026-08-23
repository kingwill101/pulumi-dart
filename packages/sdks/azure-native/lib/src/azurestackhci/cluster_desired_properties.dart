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
  const ClusterDesiredProperties({
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
      diagnosticLevel: (() { final guardedValue = map['diagnosticLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      windowsServerSubscription: (() { final guardedValue = map['windowsServerSubscription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
