// ignore_for_file: unused_element, unnecessary_cast

class RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final int? code;

  /// (Output)
  /// A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
  final String? message;

  RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus.fromMap(
      Map<String, dynamic> map) {
    return RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus(
      code: map['code'] == null ? null : map['code'] as int,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
