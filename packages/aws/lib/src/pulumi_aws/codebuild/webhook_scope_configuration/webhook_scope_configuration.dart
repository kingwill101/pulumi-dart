// ignore_for_file: unused_element, unnecessary_cast

class WebhookScopeConfiguration {
  /// The domain of the GitHub Enterprise organization. Required if your project's source type is GITHUB_ENTERPRISE.
  final String? domain;

  /// The name of either the enterprise or organization.
  final String name;

  /// The type of scope for a GitHub webhook. Valid values for this parameter are: `GITHUB_ORGANIZATION`, `GITHUB_GLOBAL`.
  final String scope;

  WebhookScopeConfiguration({
    this.domain,
    required this.name,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    map['name'] = name;
    map['scope'] = scope;
    return map;
  }

  factory WebhookScopeConfiguration.fromMap(Map<String, dynamic> map) {
    return WebhookScopeConfiguration(
      domain: map['domain'] == null ? null : map['domain'] as String,
      name: map['name'] as String,
      scope: map['scope'] as String,
    );
  }
}
