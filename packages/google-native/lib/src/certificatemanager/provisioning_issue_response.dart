// ignore_for_file: unused_element, unnecessary_cast

/// Information about issues with provisioning a Managed Certificate.
class ProvisioningIssueResponse {
  /// Human readable explanation about the issue. Provided to help address the configuration issues. Not guaranteed to be stable. For programmatic access use Reason enum.
  final String details;

  /// Reason for provisioning failures.
  final String reason;

  /// Creates a new [ProvisioningIssueResponse].
  /// [details] Human readable explanation about the issue. Provided to help address the configuration issues. Not guaranteed to be stable. For programmatic access use Reason enum.
  /// [reason] Reason for provisioning failures.
  ProvisioningIssueResponse({required this.details, required this.reason});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'details': details, 'reason': reason};
  }

  factory ProvisioningIssueResponse.fromMap(Map<String, dynamic> map) {
    return ProvisioningIssueResponse(
      details: map['details'] as String,
      reason: map['reason'] as String,
    );
  }
}
