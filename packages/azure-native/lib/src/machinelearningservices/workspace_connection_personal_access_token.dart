// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceConnectionPersonalAccessToken {
  final String? pat;

  /// Creates a new [WorkspaceConnectionPersonalAccessToken].
  /// [pat] Optional.
  WorkspaceConnectionPersonalAccessToken({
    this.pat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pat': ?pat,
    };
  }

  factory WorkspaceConnectionPersonalAccessToken.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionPersonalAccessToken(
      pat: map['pat'] == null ? null : map['pat'] as String,
    );
  }
}

