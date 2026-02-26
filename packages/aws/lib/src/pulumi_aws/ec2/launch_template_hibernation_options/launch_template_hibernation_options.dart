// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateHibernationOptions {
  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the launched EC2 instance will hibernation enabled.
  final bool configured;

  LaunchTemplateHibernationOptions({
    required this.configured,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configured'] = configured;
    return map;
  }

  factory LaunchTemplateHibernationOptions.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateHibernationOptions(
      configured: map['configured'] as bool,
    );
  }
}
