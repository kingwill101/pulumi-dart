// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesSlbRule {
  /// Domain name in the HTTP request where the rule applies (e.g. "*.aliyun.com").
  final pulumi.Input<String> domain;
  /// Rule ID.
  final pulumi.Input<String> id;
  /// Rule name.
  final pulumi.Input<String> name;
  /// ID of the linked VServer group.
  final pulumi.Input<String> serverGroupId;
  /// Path in the HTTP request where the rule applies (e.g. "/image").
  final pulumi.Input<String> url;

  /// Creates a new [GetRulesSlbRule].
  /// [domain] Domain name in the HTTP request where the rule applies (e.g. "*.aliyun.com").
  /// [id] Rule ID.
  /// [name] Rule name.
  /// [serverGroupId] ID of the linked VServer group.
  /// [url] Path in the HTTP request where the rule applies (e.g. "/image").
  const GetRulesSlbRule({
    required this.domain,
    required this.id,
    required this.name,
    required this.serverGroupId,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'id': id,
      'name': name,
      'serverGroupId': serverGroupId,
      'url': url,
    };
  }

  factory GetRulesSlbRule.fromMap(Map<String, dynamic> map) {
    return GetRulesSlbRule(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      serverGroupId: pulumi.Input.fromValue(map['serverGroupId'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

