// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Approver Metadata for approvals request.
class MandatoryApprover {
  /// EntraId of the approver
  final pulumi.Input<String> approverEntraId;

  /// Creates a new [MandatoryApprover].
  /// [approverEntraId] EntraId of the approver
  const MandatoryApprover({
    required this.approverEntraId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approverEntraId': approverEntraId,
    };
  }

  factory MandatoryApprover.fromMap(Map<String, dynamic> map) {
    return MandatoryApprover(
      approverEntraId: pulumi.Input.fromValue(map['approverEntraId'] as String),
    );
  }
}

