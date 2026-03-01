// ignore_for_file: unused_element, unnecessary_cast


class GetRulesSlbRule {
  /// Domain name in the HTTP request where the rule applies (e.g. "*.aliyun.com").
  final String domain;
  /// Rule ID.
  final String id;
  /// Rule name.
  final String name;
  /// ID of the linked VServer group.
  final String serverGroupId;
  /// Path in the HTTP request where the rule applies (e.g. "/image").
  final String url;

  /// Creates a new [GetRulesSlbRule].
  /// [domain] Domain name in the HTTP request where the rule applies (e.g. "*.aliyun.com").
  /// [id] Rule ID.
  /// [name] Rule name.
  /// [serverGroupId] ID of the linked VServer group.
  /// [url] Path in the HTTP request where the rule applies (e.g. "/image").
  GetRulesSlbRule({
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
      domain: map['domain'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      serverGroupId: map['serverGroupId'] as String,
      url: map['url'] as String,
    );
  }
}

