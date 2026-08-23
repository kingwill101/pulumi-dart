// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionPersonalAccessTokenResponse {
  final pulumi.Input<String>? pat;

  /// Creates a new [WorkspaceConnectionPersonalAccessTokenResponse].
  /// [pat] Optional.
  const WorkspaceConnectionPersonalAccessTokenResponse({
    this.pat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pat': ?pat,
    };
  }

  factory WorkspaceConnectionPersonalAccessTokenResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionPersonalAccessTokenResponse(
      pat: (() { final guardedValue = map['pat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
