// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Databricks
class DatabricksPropertiesResponse {
  /// Databricks access token
  final pulumi.Input<String>? databricksAccessToken;
  /// Workspace Url
  final pulumi.Input<String>? workspaceUrl;

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
      databricksAccessToken: map['databricksAccessToken'] == null ? null : (map['databricksAccessToken'] as String).input(),
      workspaceUrl: map['workspaceUrl'] == null ? null : (map['workspaceUrl'] as String).input(),
    );
  }
}

