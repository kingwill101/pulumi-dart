// ignore_for_file: unused_element, unnecessary_cast


/// The fields needed for OIDC with GitHub.
class GitHubWorkflowProfileOidcCredentials {
  /// Azure Application Client ID
  final String? azureClientId;
  /// Azure Directory (tenant) ID
  final String? azureTenantId;

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
      azureClientId: map['azureClientId'] == null ? null : map['azureClientId'] as String,
      azureTenantId: map['azureTenantId'] == null ? null : map['azureTenantId'] as String,
    );
  }
}

