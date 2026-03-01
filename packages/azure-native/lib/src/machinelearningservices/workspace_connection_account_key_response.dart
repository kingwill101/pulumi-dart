// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceConnectionAccountKeyResponse {
  final String? key;

  /// Creates a new [WorkspaceConnectionAccountKeyResponse].
  /// [key] Optional.
  WorkspaceConnectionAccountKeyResponse({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory WorkspaceConnectionAccountKeyResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionAccountKeyResponse(
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}

