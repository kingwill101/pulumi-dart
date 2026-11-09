// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebhookScopeConfiguration {
  /// The domain of the GitHub Enterprise organization. Required if your project's source type is GITHUB_ENTERPRISE.
  final pulumi.Input<String?>? domain;
  /// Name of the enterprise, organization, or GitLab group.
  final pulumi.Input<String> name;
  /// Scope of the webhook. Valid values: `GITHUB_ORGANIZATION`, `GITHUB_GLOBAL`, `GITLAB_GROUP`.
  final pulumi.Input<String> scope;

  /// Creates a new [WebhookScopeConfiguration].
  /// [domain] The domain of the GitHub Enterprise organization. Required if your project's source type is GITHUB_ENTERPRISE.
  /// [name] Name of the enterprise, organization, or GitLab group.
  /// [scope] Scope of the webhook. Valid values: `GITHUB_ORGANIZATION`, `GITHUB_GLOBAL`, `GITLAB_GROUP`.
  const WebhookScopeConfiguration({
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
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
