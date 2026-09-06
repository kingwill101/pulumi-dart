// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Observability profile to enable advanced network metrics and flow logs with historical contexts.
class AdvancedNetworkingObservability {
  /// Indicates the enablement of Advanced Networking observability functionalities on clusters.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [AdvancedNetworkingObservability].
  /// [enabled] Indicates the enablement of Advanced Networking observability functionalities on clusters.
  const AdvancedNetworkingObservability({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory AdvancedNetworkingObservability.fromMap(Map<String, dynamic> map) {
    return AdvancedNetworkingObservability(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
