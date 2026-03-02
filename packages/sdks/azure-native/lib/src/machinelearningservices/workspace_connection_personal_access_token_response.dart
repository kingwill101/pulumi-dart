// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceConnectionPersonalAccessTokenResponse {
  final pulumi.Input<String>? pat;

  /// Creates a new [WorkspaceConnectionPersonalAccessTokenResponse].
  /// [pat] Optional.
  WorkspaceConnectionPersonalAccessTokenResponse({
    this.pat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pat': ?pat,
    };
  }

  factory WorkspaceConnectionPersonalAccessTokenResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionPersonalAccessTokenResponse(
      pat: map['pat'] == null ? null : (map['pat']! as String).input(),
    );
  }
}

