// ignore_for_file: unused_element, unnecessary_cast


class CxTestCaseLastTestResultConversationTurnVirtualAgentOutputCurrentPage {
  /// (Output)
  /// The human-readable name of the page, unique within the flow.
  final String? displayName;
  /// The unique identifier of the page.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
  final String? name;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnVirtualAgentOutputCurrentPage].
  /// [displayName] (Output)
  /// [name] The unique identifier of the page.
  CxTestCaseLastTestResultConversationTurnVirtualAgentOutputCurrentPage({
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory CxTestCaseLastTestResultConversationTurnVirtualAgentOutputCurrentPage.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnVirtualAgentOutputCurrentPage(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

