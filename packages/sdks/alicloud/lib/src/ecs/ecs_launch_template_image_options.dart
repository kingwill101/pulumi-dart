// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EcsLaunchTemplateImageOptions {
  /// Specifies whether the instance that uses the image supports logons of the ecs-user user. Default value: `false`. Valid values: `true`,`false`.
  final pulumi.Input<bool>? loginAsNonRoot;

  /// Creates a new [EcsLaunchTemplateImageOptions].
  /// [loginAsNonRoot] Specifies whether the instance that uses the image supports logons of the ecs-user user. Default value: `false`. Valid values: `true`,`false`.
  EcsLaunchTemplateImageOptions({
    this.loginAsNonRoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginAsNonRoot': ?loginAsNonRoot,
    };
  }

  factory EcsLaunchTemplateImageOptions.fromMap(Map<String, dynamic> map) {
    return EcsLaunchTemplateImageOptions(
      loginAsNonRoot: map['loginAsNonRoot'] == null ? null : (map['loginAsNonRoot']! as bool).input(),
    );
  }
}

