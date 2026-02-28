// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse {
  /// A collection of text responses.
  final List<String>? texts;

  /// Creates a new [CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse].
  /// [texts] A collection of text responses.
  CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse({
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

  factory CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnVirtualAgentOutputTextResponse(
      texts:
          map['texts'] == null ? null : (map['texts'] as List).cast<String>(),
    );
  }
}
