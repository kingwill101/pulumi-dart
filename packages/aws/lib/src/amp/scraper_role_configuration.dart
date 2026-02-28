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
    return <String, dynamic>{
      'sourceRoleArn': ?sourceRoleArn,
      'targetRoleArn': ?targetRoleArn,
    };
  }

  factory ScraperRoleConfiguration.fromMap(Map<String, dynamic> map) {
    return ScraperRoleConfiguration(
      sourceRoleArn: map['sourceRoleArn'] == null ? null : map['sourceRoleArn'] as String,
      targetRoleArn: map['targetRoleArn'] == null ? null : map['targetRoleArn'] as String,
    );
  }
}

