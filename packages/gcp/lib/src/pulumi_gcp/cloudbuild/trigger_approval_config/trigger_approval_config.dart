// ignore_for_file: unused_element, unnecessary_cast

class TriggerApprovalConfig {
  /// Whether or not approval is needed. If this is set on a build, it will become pending when run,
  /// and will need to be explicitly approved to start.
  final bool? approvalRequired;

  TriggerApprovalConfig({
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

  factory TriggerApprovalConfig.fromMap(Map<String, dynamic> map) {
    return TriggerApprovalConfig(
      approvalRequired: map['approvalRequired'] == null
          ? null
          : map['approvalRequired'] as bool,
    );
  }
}
