// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceConnectionPersonalAccessTokenResponse {
  final String? pat;

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
      pat: map['pat'] == null ? null : map['pat'] as String,
    );
  }
}

