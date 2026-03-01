// ignore_for_file: unused_element, unnecessary_cast


class LaunchTemplateImageOptions {
  final bool? loginAsNonRoot;

  /// Creates a new [LaunchTemplateImageOptions].
  /// [loginAsNonRoot] Optional.
  LaunchTemplateImageOptions({
    this.loginAsNonRoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginAsNonRoot': ?loginAsNonRoot,
    };
  }

  factory LaunchTemplateImageOptions.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateImageOptions(
      loginAsNonRoot: map['loginAsNonRoot'] == null ? null : map['loginAsNonRoot'] as bool,
    );
  }
}

