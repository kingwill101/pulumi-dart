// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Approver Metadata for approvals request.
class Approver {
  /// Action Performed by approver
  final pulumi.Input<String>? actionPerformed;
  /// Entra ObjectID of the approver
  final pulumi.Input<String> approverEntraId;
  /// approval request last updated at
  final pulumi.Input<String> lastUpdatedAt;

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
      actionPerformed: (() { final guardedValue = map['actionPerformed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      approverEntraId: pulumi.Input.fromValue(map['approverEntraId'] as String),
      lastUpdatedAt: pulumi.Input.fromValue(map['lastUpdatedAt'] as String),
    );
  }
}

