// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainAimlOptionsServerlessVectorAcceleration {
  /// Enables GPU-accelerated vector search for improved performance on vector workloads.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DomainAimlOptionsServerlessVectorAcceleration].
  /// [enabled] Enables GPU-accelerated vector search for improved performance on vector workloads.
  DomainAimlOptionsServerlessVectorAcceleration({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DomainAimlOptionsServerlessVectorAcceleration.fromMap(Map<String, dynamic> map) {
    return DomainAimlOptionsServerlessVectorAcceleration(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

