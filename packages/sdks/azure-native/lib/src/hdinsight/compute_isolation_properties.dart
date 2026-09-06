// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The compute isolation properties.
class ComputeIsolationProperties {
  /// The flag indicates whether enable compute isolation or not.
  final pulumi.Input<bool?>? enableComputeIsolation;
  /// The host sku.
  final pulumi.Input<String?>? hostSku;

  /// Creates a new [ComputeIsolationProperties].
  /// [enableComputeIsolation] The flag indicates whether enable compute isolation or not.
  /// [hostSku] The host sku.
  ComputeIsolationProperties({
    pulumi.Input<bool?>? enableComputeIsolation,
    this.hostSku,
  }) : enableComputeIsolation = enableComputeIsolation ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComputeIsolation': ?enableComputeIsolation,
      'hostSku': ?hostSku,
    };
  }

  factory ComputeIsolationProperties.fromMap(Map<String, dynamic> map) {
    return ComputeIsolationProperties(
      enableComputeIsolation: (() { final guardedValue = map['enableComputeIsolation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostSku: (() { final guardedValue = map['hostSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
