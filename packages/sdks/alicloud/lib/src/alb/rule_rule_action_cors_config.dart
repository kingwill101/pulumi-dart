// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRuleActionCorsConfig {
  /// Specifies whether credentials can be passed during CORS operations. Valid values: `on`, `off`.
  final pulumi.Input<String>? allowCredentials;
  /// The allowed headers for CORS requests.
  final pulumi.Input<List<String>>? allowHeaders;
  /// The allowed HTTP methods for CORS requests. Valid values: `GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `PATCH`.
  final pulumi.Input<List<String>>? allowMethods;
  /// The allowed origins of CORS requests.
  final pulumi.Input<List<String>>? allowOrigins;
  /// The headers that can be exposed.
  final pulumi.Input<List<String>>? exposeHeaders;
  /// The maximum cache time of preflight requests in the browser. Unit: seconds. Valid values: `-1` to `172800`.
  final pulumi.Input<int>? maxAge;

  /// Creates a new [RuleRuleActionCorsConfig].
  /// [allowCredentials] Specifies whether credentials can be passed during CORS operations. Valid values: `on`, `off`.
  /// [allowHeaders] The allowed headers for CORS requests.
  /// [allowMethods] The allowed HTTP methods for CORS requests. Valid values: `GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `PATCH`.
  /// [allowOrigins] The allowed origins of CORS requests.
  /// [exposeHeaders] The headers that can be exposed.
  /// [maxAge] The maximum cache time of preflight requests in the browser. Unit: seconds. Valid values: `-1` to `172800`.
  RuleRuleActionCorsConfig({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOrigins,
    this.exposeHeaders,
    this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'allowHeaders': ?allowHeaders,
      'allowMethods': ?allowMethods,
      'allowOrigins': ?allowOrigins,
      'exposeHeaders': ?exposeHeaders,
      'maxAge': ?maxAge,
    };
  }

  factory RuleRuleActionCorsConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionCorsConfig(
      allowCredentials: map['allowCredentials'] == null ? null : (map['allowCredentials']! as String).input(),
      allowHeaders: map['allowHeaders'] == null ? null : ((map['allowHeaders']! as List).cast<String>()).input(),
      allowMethods: map['allowMethods'] == null ? null : ((map['allowMethods']! as List).cast<String>()).input(),
      allowOrigins: map['allowOrigins'] == null ? null : ((map['allowOrigins']! as List).cast<String>()).input(),
      exposeHeaders: map['exposeHeaders'] == null ? null : ((map['exposeHeaders']! as List).cast<String>()).input(),
      maxAge: map['maxAge'] == null ? null : (map['maxAge']! as int).input(),
    );
  }
}

