// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceImageOptions {
  /// Whether to allow the instance logging in with the ecs-user user.
  final pulumi.Input<bool>? loginAsNonRoot;

  /// Creates a new [InstanceImageOptions].
  /// [loginAsNonRoot] Whether to allow the instance logging in with the ecs-user user.
  InstanceImageOptions({
    this.loginAsNonRoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loginAsNonRoot': ?loginAsNonRoot,
    };
  }

  factory InstanceImageOptions.fromMap(Map<String, dynamic> map) {
    return InstanceImageOptions(
      loginAsNonRoot: (() { final guardedValue = map['loginAsNonRoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

