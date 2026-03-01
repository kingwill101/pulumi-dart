// ignore_for_file: unused_element, unnecessary_cast


/// Properties of Databricks
class DatabricksProperties {
  /// Databricks access token
  final String? databricksAccessToken;
  /// Workspace Url
  final String? workspaceUrl;

  /// Creates a new [DatabricksProperties].
  /// [databricksAccessToken] Databricks access token
  /// [workspaceUrl] Workspace Url
  DatabricksProperties({
    this.databricksAccessToken,
    this.workspaceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databricksAccessToken': ?databricksAccessToken,
      'workspaceUrl': ?workspaceUrl,
    };
  }

  factory DatabricksProperties.fromMap(Map<String, dynamic> map) {
    return DatabricksProperties(
      databricksAccessToken: map['databricksAccessToken'] == null ? null : map['databricksAccessToken'] as String,
      workspaceUrl: map['workspaceUrl'] == null ? null : map['workspaceUrl'] as String,
    );
  }
}

