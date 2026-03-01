// ignore_for_file: unused_element, unnecessary_cast

/// Reference to an existing log group.
class ExistingLogGroup {
  /// Arn of the log group. Only one of [arn] or [name] can be specified.
  final String? arn;

  /// Name of the log group. Only one of [arn] or [name] can be specified.
  final String? name;

  /// Region of the log group. If not specified, the provider region will be used.
  final String? region;

  /// Creates a new [ExistingLogGroup].
  /// [arn] Arn of the log group. Only one of [arn] or [name] can be specified.
  /// [name] Name of the log group. Only one of [arn] or [name] can be specified.
  /// [region] Region of the log group. If not specified, the provider region will be used.
  ExistingLogGroup({this.arn, this.name, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': ?arn, 'name': ?name, 'region': ?region};
  }

  factory ExistingLogGroup.fromMap(Map<String, dynamic> map) {
    return ExistingLogGroup(
      arn: map['arn'] == null ? null : map['arn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
