// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateIamInstanceProfile {
  /// The Amazon Resource Name (ARN) of the instance profile. Conflicts with `name`.
  final String? arn;

  /// The name of the instance profile.
  final String? name;

  /// Creates a new [LaunchTemplateIamInstanceProfile].
  /// [arn] The Amazon Resource Name (ARN) of the instance profile. Conflicts with `name`.
  /// [name] The name of the instance profile.
  LaunchTemplateIamInstanceProfile({
    this.arn,
    this.name,
  });

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
    return map;
  }

  factory LaunchTemplateIamInstanceProfile.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateIamInstanceProfile(
      arn: map['arn'] == null ? null : map['arn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
