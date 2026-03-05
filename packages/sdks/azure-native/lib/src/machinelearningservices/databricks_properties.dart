// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of Databricks
class DatabricksProperties {
  /// Databricks access token
  final pulumi.Input<String>? databricksAccessToken;
  /// Workspace Url
  final pulumi.Input<String>? workspaceUrl;

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
      databricksAccessToken: (() { final guardedValue = map['databricksAccessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceUrl: (() { final guardedValue = map['workspaceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

