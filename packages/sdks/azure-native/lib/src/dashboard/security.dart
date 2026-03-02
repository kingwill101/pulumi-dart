// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Grafana security settings
class Security {
  /// Set to true to execute the CSRF check even if the login cookie is not in a request (default false).
  final pulumi.Input<bool>? csrfAlwaysCheck;

  /// Creates a new [Security].
  /// [csrfAlwaysCheck] Set to true to execute the CSRF check even if the login cookie is not in a request (default false).
  Security({
    this.csrfAlwaysCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csrfAlwaysCheck': ?csrfAlwaysCheck,
    };
  }

  factory Security.fromMap(Map<String, dynamic> map) {
    return Security(
      csrfAlwaysCheck: map['csrfAlwaysCheck'] == null ? null : (map['csrfAlwaysCheck'] as bool).input(),
    );
  }
}

