// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateHibernationOption {
  final bool configured;

  GetLaunchTemplateHibernationOption({
    required this.configured,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configured'] = configured;
    return map;
  }

  factory GetLaunchTemplateHibernationOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateHibernationOption(
      configured: map['configured'] as bool,
    );
  }
}
