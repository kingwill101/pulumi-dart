// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage {
  /// (Output)
  /// The human-readable name of the page, unique within the flow.
  final String? displayName;

  /// The unique identifier of the page.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
  final String? name;

  /// Creates a new [CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage].
  /// [displayName] (Output)
  /// [name] The unique identifier of the page.
  CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage({
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage.fromMap(
      Map<String, dynamic> map) {
    return CxTestCaseTestCaseConversationTurnVirtualAgentOutputCurrentPage(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
