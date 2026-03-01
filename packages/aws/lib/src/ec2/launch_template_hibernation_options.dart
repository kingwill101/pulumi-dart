// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateHibernationOptions {
  /// If set to `true`, the launched EC2 instance will hibernation enabled.
  final bool configured;

  /// Creates a new [LaunchTemplateHibernationOptions].
  /// [configured] If set to `true`, the launched EC2 instance will hibernation enabled.
  LaunchTemplateHibernationOptions({required this.configured});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'configured': configured};
  }

  factory LaunchTemplateHibernationOptions.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateHibernationOptions(
      configured: map['configured'] as bool,
    );
  }
}
