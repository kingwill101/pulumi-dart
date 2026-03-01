// ignore_for_file: unused_element, unnecessary_cast


/// Properties of Databricks
class DatabricksPropertiesResponse {
  /// Databricks access token
  final String? databricksAccessToken;
  /// Workspace Url
  final String? workspaceUrl;

  /// Creates a new [DatabricksPropertiesResponse].
  /// [databricksAccessToken] Databricks access token
  /// [workspaceUrl] Workspace Url
  DatabricksPropertiesResponse({
    this.databricksAccessToken,
    this.workspaceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databricksAccessToken': ?databricksAccessToken,
      'workspaceUrl': ?workspaceUrl,
    };
  }

  factory DatabricksPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DatabricksPropertiesResponse(
      databricksAccessToken: map['databricksAccessToken'] == null ? null : map['databricksAccessToken'] as String,
      workspaceUrl: map['workspaceUrl'] == null ? null : map['workspaceUrl'] as String,
    );
  }
}

