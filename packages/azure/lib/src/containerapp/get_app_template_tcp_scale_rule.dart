// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_template_tcp_scale_rule_authentication.dart';

class GetAppTemplateTcpScaleRule {
  final List<GetAppTemplateTcpScaleRuleAuthentication> authentications;
  final String concurrentRequests;
  /// The name of the Container App.
  final String name;

  /// Creates a new [GetAppTemplateTcpScaleRule].
  /// [authentications] Required.
  /// [concurrentRequests] Required.
  /// [name] The name of the Container App.
  GetAppTemplateTcpScaleRule({
    required this.authentications,
    required this.concurrentRequests,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentications': pulumi.Input.encodeList<GetAppTemplateTcpScaleRuleAuthentication, Map<String, dynamic>>(authentications, (value) => value.toMap()),
      'concurrentRequests': concurrentRequests,
      'name': name,
    };
  }

  factory GetAppTemplateTcpScaleRule.fromMap(Map<String, dynamic> map) {
    return GetAppTemplateTcpScaleRule(
      authentications: pulumi.Input.decodeList<GetAppTemplateTcpScaleRuleAuthentication>(map['authentications'], (value) => GetAppTemplateTcpScaleRuleAuthentication.fromMap((value as Map).cast<String, dynamic>())),
      concurrentRequests: map['concurrentRequests'] as String,
      name: map['name'] as String,
    );
  }
}

