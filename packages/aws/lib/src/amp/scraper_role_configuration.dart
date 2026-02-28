// ignore_for_file: unused_element, unnecessary_cast

class ScraperRoleConfiguration {
  /// The Amazon Resource Name (ARN) of the source role configuration. Must be an IAM role ARN.
  final String? sourceRoleArn;

  /// The Amazon Resource Name (ARN) of the target role configuration. Must be an IAM role ARN.
  final String? targetRoleArn;

  /// Creates a new [ScraperRoleConfiguration].
  /// [sourceRoleArn] The Amazon Resource Name (ARN) of the source role configuration. Must be an IAM role ARN.
  /// [targetRoleArn] The Amazon Resource Name (ARN) of the target role configuration. Must be an IAM role ARN.
  ScraperRoleConfiguration({
    this.sourceRoleArn,
    this.targetRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourceRoleArnValue = sourceRoleArn;
    if (sourceRoleArnValue != null) {
      map['sourceRoleArn'] = sourceRoleArnValue;
    }
    final targetRoleArnValue = targetRoleArn;
    if (targetRoleArnValue != null) {
      map['targetRoleArn'] = targetRoleArnValue;
    }
    return map;
  }

  factory ScraperRoleConfiguration.fromMap(Map<String, dynamic> map) {
    return ScraperRoleConfiguration(
      sourceRoleArn:
          map['sourceRoleArn'] == null ? null : map['sourceRoleArn'] as String,
      targetRoleArn:
          map['targetRoleArn'] == null ? null : map['targetRoleArn'] as String,
    );
  }
}
