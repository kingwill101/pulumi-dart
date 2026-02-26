// ignore_for_file: unused_element, unnecessary_cast

/// ApprovalConfig describes configuration for manual approval of a build.
class ApprovalConfig {
  /// Whether or not approval is needed. If this is set on a build, it will become pending when created, and will need to be explicitly approved to start.
  final bool? approvalRequired;

  ApprovalConfig({
    this.approvalRequired,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final approvalRequiredValue = approvalRequired;
    if (approvalRequiredValue != null) {
      map['approvalRequired'] = approvalRequiredValue;
    }
    return map;
  }

  factory ApprovalConfig.fromMap(Map<String, dynamic> map) {
    return ApprovalConfig(
      approvalRequired: map['approvalRequired'] == null
          ? null
          : map['approvalRequired'] as bool,
    );
  }
}
