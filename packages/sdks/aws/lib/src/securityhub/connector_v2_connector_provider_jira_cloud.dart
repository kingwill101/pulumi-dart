// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorV2ConnectorProviderJiraCloud {
  /// Status of the authorization between Jira Cloud and the service.
  final pulumi.Input<String>? authStatus;
  /// URL to provide to customers for OAuth auth code flow.
  final pulumi.Input<String>? authUrl;
  /// Cloud ID of the Jira Cloud.
  final pulumi.Input<String>? cloudId;
  /// URL domain of the Jira Cloud instance.
  final pulumi.Input<String>? domain;
  /// Jira Cloud project key.
  final pulumi.Input<String> projectKey;

  /// Creates a new [ConnectorV2ConnectorProviderJiraCloud].
  /// [authStatus] Status of the authorization between Jira Cloud and the service.
  /// [authUrl] URL to provide to customers for OAuth auth code flow.
  /// [cloudId] Cloud ID of the Jira Cloud.
  /// [domain] URL domain of the Jira Cloud instance.
  /// [projectKey] Jira Cloud project key.
  const ConnectorV2ConnectorProviderJiraCloud({
    this.authStatus,
    this.authUrl,
    this.cloudId,
    this.domain,
    required this.projectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authStatus': ?authStatus,
      'authUrl': ?authUrl,
      'cloudId': ?cloudId,
      'domain': ?domain,
      'projectKey': projectKey,
    };
  }

  factory ConnectorV2ConnectorProviderJiraCloud.fromMap(Map<String, dynamic> map) {
    return ConnectorV2ConnectorProviderJiraCloud(
      authStatus: (() { final guardedValue = map['authStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authUrl: (() { final guardedValue = map['authUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudId: (() { final guardedValue = map['cloudId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectKey: pulumi.Input.fromValue(map['projectKey'] as String),
    );
  }
}
