// ignore_for_file: unused_element, unnecessary_cast


/// Approver Metadata for approvals request.
class Approver {
  /// Action Performed by approver
  final String? actionPerformed;
  /// Entra ObjectID of the approver
  final String approverEntraId;
  /// approval request last updated at
  final String lastUpdatedAt;

  /// Creates a new [Approver].
  /// [actionPerformed] Action Performed by approver
  /// [approverEntraId] Entra ObjectID of the approver
  /// [lastUpdatedAt] approval request last updated at
  Approver({
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

  factory Approver.fromMap(Map<String, dynamic> map) {
    return Approver(
      actionPerformed: map['actionPerformed'] == null ? null : map['actionPerformed'] as String,
      approverEntraId: map['approverEntraId'] as String,
      lastUpdatedAt: map['lastUpdatedAt'] as String,
    );
  }
}

