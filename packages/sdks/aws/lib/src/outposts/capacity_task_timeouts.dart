// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityTaskTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final pulumi.Input<String?>? create;
  /// &gt; **Long-running capacity tasks.** The default `create` timeout of `60m` is sufficient for most re-balancing operations on small to medium instance types. However, capacity tasks that change the configuration of bare-metal instance types (`*.metal`) or very large instance types (`24xlarge`, `48xlarge`, etc.) in the current or target state can take **8 to 12 hours** to complete, because AWS must stop, reconfigure, and re-start the underlying hardware. If your `instancePool` configuration or the current state of the Outpost involves one of these instance types, override the `create` timeout accordingly — for example:
  final pulumi.Input<String?>? delete;

  /// Creates a new [CapacityTaskTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  /// [delete] &gt; **Long-running capacity tasks.** The default `create` timeout of `60m` is sufficient for most re-balancing operations on small to medium instance types. However, capacity tasks that change the configuration of bare-metal instance types (`*.metal`) or very large instance types (`24xlarge`, `48xlarge`, etc.) in the current or target state can take **8 to 12 hours** to complete, because AWS must stop, reconfigure, and re-start the underlying hardware. If your `instancePool` configuration or the current state of the Outpost involves one of these instance types, override the `create` timeout accordingly — for example:
  const CapacityTaskTimeouts({
    this.create,
    this.delete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
      'delete': ?delete,
    };
  }

  factory CapacityTaskTimeouts.fromMap(Map<String, dynamic> map) {
    return CapacityTaskTimeouts(
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
