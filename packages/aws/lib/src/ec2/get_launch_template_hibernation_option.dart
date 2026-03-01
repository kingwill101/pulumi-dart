// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateHibernationOption {
  final bool configured;

  /// Creates a new [GetLaunchTemplateHibernationOption].
  /// [configured] Required.
  GetLaunchTemplateHibernationOption({required this.configured});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'configured': configured};
  }

  factory GetLaunchTemplateHibernationOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateHibernationOption(
      configured: map['configured'] as bool,
    );
  }
}
