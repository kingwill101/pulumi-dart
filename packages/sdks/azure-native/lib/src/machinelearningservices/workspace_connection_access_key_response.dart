// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceConnectionAccessKeyResponse {
  final String? accessKeyId;
  final String? secretAccessKey;

  /// Creates a new [WorkspaceConnectionAccessKeyResponse].
  /// [accessKeyId] Optional.
  /// [secretAccessKey] Optional.
  WorkspaceConnectionAccessKeyResponse({
    this.accessKeyId,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory WorkspaceConnectionAccessKeyResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionAccessKeyResponse(
      accessKeyId: map['accessKeyId'] == null ? null : map['accessKeyId'] as String,
      secretAccessKey: map['secretAccessKey'] == null ? null : map['secretAccessKey'] as String,
    );
  }
}

