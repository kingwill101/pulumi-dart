// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The fields needed for OIDC with GitHub.
class GitHubWorkflowProfileOidcCredentials {
  /// Azure Application Client ID
  final pulumi.Input<String>? azureClientId;
  /// Azure Directory (tenant) ID
  final pulumi.Input<String>? azureTenantId;

  /// Creates a new [GitHubWorkflowProfileOidcCredentials].
  /// [azureClientId] Azure Application Client ID
  /// [azureTenantId] Azure Directory (tenant) ID
  const GitHubWorkflowProfileOidcCredentials({
    this.azureClientId,
    this.azureTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureClientId': ?azureClientId,
      'azureTenantId': ?azureTenantId,
    };
  }

  factory GitHubWorkflowProfileOidcCredentials.fromMap(Map<String, dynamic> map) {
    return GitHubWorkflowProfileOidcCredentials(
      azureClientId: (() { final guardedValue = map['azureClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureTenantId: (() { final guardedValue = map['azureTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

