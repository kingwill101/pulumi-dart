// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Approver Metadata for approvals request.
class MandatoryApproverResponse {
  /// EntraId of the approver
  final pulumi.Input<String> approverEntraId;

  /// Creates a new [MandatoryApproverResponse].
  /// [approverEntraId] EntraId of the approver
  const MandatoryApproverResponse({
    required this.approverEntraId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approverEntraId': approverEntraId,
    };
  }

  factory MandatoryApproverResponse.fromMap(Map<String, dynamic> map) {
    return MandatoryApproverResponse(
      approverEntraId: pulumi.Input.fromValue(map['approverEntraId'] as String),
    );
  }
}
