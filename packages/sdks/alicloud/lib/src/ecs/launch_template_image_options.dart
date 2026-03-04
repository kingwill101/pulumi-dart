// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateImageOptions {
  final pulumi.Input<bool>? loginAsNonRoot;

  /// Creates a new [LaunchTemplateImageOptions].
  /// [loginAsNonRoot] Optional.
  LaunchTemplateImageOptions({this.loginAsNonRoot});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'loginAsNonRoot': ?loginAsNonRoot};
  }

  factory LaunchTemplateImageOptions.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateImageOptions(
      loginAsNonRoot: (() {
        final guardedValue = map['loginAsNonRoot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
