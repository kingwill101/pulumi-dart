// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  final int? code;

  /// A JSON encoded list of messages that carry the error details.
  final String? details;

  /// A developer-facing error message.
  final String? message;

  CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus({
    this.code,
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final detailsValue = details;
    if (detailsValue != null) {
      map['details'] = detailsValue;
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue;
    }
    return map;
  }

  factory CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus(
      code: map['code'] == null ? null : map['code'] as int,
      details: map['details'] == null ? null : map['details'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}
