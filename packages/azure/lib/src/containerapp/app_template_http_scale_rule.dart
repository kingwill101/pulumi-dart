// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_http_scale_rule_authentication.dart';

class AppTemplateHttpScaleRule {
  /// Zero or more `authentication` blocks as defined below.
  final List<AppTemplateHttpScaleRuleAuthentication>? authentications;
  /// The number of concurrent requests to trigger scaling.
  final String concurrentRequests;
  /// The name of the Scaling Rule
  final String name;

  /// Creates a new [AppTemplateHttpScaleRule].
  /// [authentications] Zero or more `authentication` blocks as defined below.
  /// [concurrentRequests] The number of concurrent requests to trigger scaling.
  /// [name] The name of the Scaling Rule
  AppTemplateHttpScaleRule({
    this.authentications,
    required this.concurrentRequests,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': ?authentications == null ? null : pulumi.Input.encodeList<AppTemplateHttpScaleRuleAuthentication, Map<String, dynamic>>(authentications!, (value) => value.toMap()),
      'concurrentRequests': concurrentRequests,
      'name': name,
    };
  }

  factory AppTemplateHttpScaleRule.fromMap(Map<String, dynamic> map) {
    return AppTemplateHttpScaleRule(
      authentications: map['authentications'] == null ? null : pulumi.Input.decodeList<AppTemplateHttpScaleRuleAuthentication>(map['authentications'], (value) => AppTemplateHttpScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>())),
      concurrentRequests: map['concurrentRequests'] as String,
      name: map['name'] as String,
    );
  }
}

