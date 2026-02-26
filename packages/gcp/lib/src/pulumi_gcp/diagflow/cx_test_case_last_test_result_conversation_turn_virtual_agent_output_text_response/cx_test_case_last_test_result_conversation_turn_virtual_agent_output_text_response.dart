// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse {
  /// A collection of text responses.
  final List<String>? texts;

  CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse({
    this.texts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final textsValue = texts;
    if (textsValue != null) {
      map['texts'] = textsValue;
    }
    return map;
  }

  factory CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnVirtualAgentOutputTextResponse(
      texts:
          map['texts'] == null ? null : (map['texts'] as List).cast<String>(),
    );
  }
}
