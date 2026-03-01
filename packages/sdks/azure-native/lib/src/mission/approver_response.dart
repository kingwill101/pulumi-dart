// ignore_for_file: unused_element, unnecessary_cast


/// Approver Metadata for approvals request.
class ApproverResponse {
  /// Action Performed by approver
  final String? actionPerformed;
  /// Entra ObjectID of the approver
  final String approverEntraId;
  /// approval request last updated at
  final String lastUpdatedAt;

  /// Creates a new [ApproverResponse].
  /// [actionPerformed] Action Performed by approver
  /// [approverEntraId] Entra ObjectID of the approver
  /// [lastUpdatedAt] approval request last updated at
  ApproverResponse({
    this.actionPerformed,
    required this.approverEntraId,
    required this.lastUpdatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionPerformed': ?actionPerformed,
      'approverEntraId': approverEntraId,
      'lastUpdatedAt': lastUpdatedAt,
    };
  }

  factory ApproverResponse.fromMap(Map<String, dynamic> map) {
    return ApproverResponse(
      actionPerformed: map['actionPerformed'] == null ? null : map['actionPerformed'] as String,
      approverEntraId: map['approverEntraId'] as String,
      lastUpdatedAt: map['lastUpdatedAt'] as String,
    );
  }
}

