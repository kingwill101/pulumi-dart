// ignore_for_file: unused_element, unnecessary_cast


/// Approver Metadata for approvals request.
class MandatoryApprover {
  /// EntraId of the approver
  final String approverEntraId;

  /// Creates a new [MandatoryApprover].
  /// [approverEntraId] EntraId of the approver
  MandatoryApprover({
    required this.approverEntraId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approverEntraId': approverEntraId,
    };
  }

  factory MandatoryApprover.fromMap(Map<String, dynamic> map) {
    return MandatoryApprover(
      approverEntraId: map['approverEntraId'] as String,
    );
  }
}

