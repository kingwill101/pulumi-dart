// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOnlineDeploymentLogs.
class GetOnlineDeploymentLogsResult {
  /// The retrieved online deployment logs.
  final String? content;

  /// Creates a new [GetOnlineDeploymentLogsResult].
  /// [content] The retrieved online deployment logs.
  const GetOnlineDeploymentLogsResult({
    this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
    };
  }

  factory GetOnlineDeploymentLogsResult.fromMap(Map<String, dynamic> map) {
    return GetOnlineDeploymentLogsResult(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
