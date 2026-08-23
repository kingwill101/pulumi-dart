// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to an existing log group.
class ExistingLogGroup {
  /// Arn of the log group. Only one of [arn] or [name] can be specified.
  final pulumi.Input<String>? arn;
  /// Name of the log group. Only one of [arn] or [name] can be specified.
  final pulumi.Input<String>? name;
  /// Region of the log group. If not specified, the provider region will be used.
  final pulumi.Input<String>? region;

  /// Creates a new [ExistingLogGroup].
  /// [arn] Arn of the log group. Only one of [arn] or [name] can be specified.
  /// [name] Name of the log group. Only one of [arn] or [name] can be specified.
  /// [region] Region of the log group. If not specified, the provider region will be used.
  const ExistingLogGroup({
    this.arn,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ExistingLogGroup.fromMap(Map<String, dynamic> map) {
    return ExistingLogGroup(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
