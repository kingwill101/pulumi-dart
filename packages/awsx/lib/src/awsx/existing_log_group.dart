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
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ExistingLogGroup.fromMap(Map<String, dynamic> map) {
    return ExistingLogGroup(
      arn: map['arn'] == null ? null : map['arn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
