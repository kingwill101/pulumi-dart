// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Grafana security settings
class SecurityResponse {
  /// Set to true to execute the CSRF check even if the login cookie is not in a request (default false).
  final pulumi.Input<bool>? csrfAlwaysCheck;

  /// Creates a new [SecurityResponse].
  /// [csrfAlwaysCheck] Set to true to execute the CSRF check even if the login cookie is not in a request (default false).
  SecurityResponse({
    this.csrfAlwaysCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csrfAlwaysCheck': ?csrfAlwaysCheck,
    };
  }

  factory SecurityResponse.fromMap(Map<String, dynamic> map) {
    return SecurityResponse(
      csrfAlwaysCheck: map['csrfAlwaysCheck'] == null ? null : (map['csrfAlwaysCheck'] as bool).input(),
    );
  }
}

