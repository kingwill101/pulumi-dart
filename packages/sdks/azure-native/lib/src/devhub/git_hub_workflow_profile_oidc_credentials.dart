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
  GitHubWorkflowProfileOidcCredentials({
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
      azureClientId: map['azureClientId'] == null ? null : (map['azureClientId'] as String).input(),
      azureTenantId: map['azureTenantId'] == null ? null : (map['azureTenantId'] as String).input(),
    );
  }
}

