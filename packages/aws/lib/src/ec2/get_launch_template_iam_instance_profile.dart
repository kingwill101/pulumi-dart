// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateIamInstanceProfile {
  final String arn;

  /// Name of the launch template.
  final String name;

  /// Creates a new [GetLaunchTemplateIamInstanceProfile].
  /// [arn] Required.
  /// [name] Name of the launch template.
  GetLaunchTemplateIamInstanceProfile({
    required this.arn,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['name'] = name;
    return map;
  }

  factory GetLaunchTemplateIamInstanceProfile.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateIamInstanceProfile(
      arn: map['arn'] as String,
      name: map['name'] as String,
    );
  }
}
