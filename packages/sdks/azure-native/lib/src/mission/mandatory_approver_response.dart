// ignore_for_file: unused_element, unnecessary_cast


/// Approver Metadata for approvals request.
class MandatoryApproverResponse {
  /// EntraId of the approver
  final String approverEntraId;

  /// Creates a new [MandatoryApproverResponse].
  /// [approverEntraId] EntraId of the approver
  MandatoryApproverResponse({
    required this.approverEntraId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approverEntraId': approverEntraId,
    };
  }

  factory MandatoryApproverResponse.fromMap(Map<String, dynamic> map) {
    return MandatoryApproverResponse(
      approverEntraId: map['approverEntraId'] as String,
    );
  }
}

