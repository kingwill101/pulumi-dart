// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelCardExportJobTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final pulumi.Input<String>? create;

  /// Creates a new [ModelCardExportJobTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  const ModelCardExportJobTimeouts({
    this.create,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
    };
  }

  factory ModelCardExportJobTimeouts.fromMap(Map<String, dynamic> map) {
    return ModelCardExportJobTimeouts(
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
