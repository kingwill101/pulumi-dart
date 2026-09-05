// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogicallyAirGappedVaultTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final pulumi.Input<String?>? create;

  /// Creates a new [LogicallyAirGappedVaultTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  const LogicallyAirGappedVaultTimeouts({
    this.create,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
    };
  }

  factory LogicallyAirGappedVaultTimeouts.fromMap(Map<String, dynamic> map) {
    return LogicallyAirGappedVaultTimeouts(
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
