// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The fields needed for OIDC with GitHub.
class GitHubWorkflowProfileResponseOidcCredentials {
  /// Azure Application Client ID
  final pulumi.Input<String?>? azureClientId;
  /// Azure Directory (tenant) ID
  final pulumi.Input<String?>? azureTenantId;

  /// Creates a new [GitHubWorkflowProfileResponseOidcCredentials].
  /// [azureClientId] Azure Application Client ID
  /// [azureTenantId] Azure Directory (tenant) ID
  const GitHubWorkflowProfileResponseOidcCredentials({
    this.azureClientId,
    this.azureTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureClientId': ?azureClientId,
      'azureTenantId': ?azureTenantId,
    };
  }

  factory GitHubWorkflowProfileResponseOidcCredentials.fromMap(Map<String, dynamic> map) {
    return GitHubWorkflowProfileResponseOidcCredentials(
      azureClientId: (() { final guardedValue = map['azureClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureTenantId: (() { final guardedValue = map['azureTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
