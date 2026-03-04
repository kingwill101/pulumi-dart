// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a CORS rule for the Map Account.
class CorsRule {
  /// Required if CorsRule element is present. A list of origin domains that will be allowed via CORS, or "*" to allow all domains
  final pulumi.Input<List<String>> allowedOrigins;

  /// Creates a new [CorsRule].
  /// [allowedOrigins] Required if CorsRule element is present. A list of origin domains that will be allowed via CORS, or "*" to allow all domains
  CorsRule({required this.allowedOrigins});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allowedOrigins': allowedOrigins};
  }

  factory CorsRule.fromMap(Map<String, dynamic> map) {
    return CorsRule(
      allowedOrigins: pulumi.Input.fromValue(
        (map['allowedOrigins'] as List).cast<String>(),
      ),
    );
  }
}
