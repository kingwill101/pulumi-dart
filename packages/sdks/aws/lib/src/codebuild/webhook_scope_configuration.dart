// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebhookScopeConfiguration {
  /// The domain of the GitHub Enterprise organization. Required if your project's source type is GITHUB_ENTERPRISE.
  final pulumi.Input<String>? domain;
  /// The name of either the enterprise or organization.
  final pulumi.Input<String> name;
  /// The type of scope for a GitHub webhook. Valid values for this parameter are: `GITHUB_ORGANIZATION`, `GITHUB_GLOBAL`.
  final pulumi.Input<String> scope;

  /// Creates a new [WebhookScopeConfiguration].
  /// [domain] The domain of the GitHub Enterprise organization. Required if your project's source type is GITHUB_ENTERPRISE.
  /// [name] The name of either the enterprise or organization.
  /// [scope] The type of scope for a GitHub webhook. Valid values for this parameter are: `GITHUB_ORGANIZATION`, `GITHUB_GLOBAL`.
  WebhookScopeConfiguration({
    this.domain,
    required this.name,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'name': name,
      'scope': scope,
    };
  }

  factory WebhookScopeConfiguration.fromMap(Map<String, dynamic> map) {
    return WebhookScopeConfiguration(
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      name: (map['name'] as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

