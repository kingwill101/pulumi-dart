// ignore_for_file: unused_element, unnecessary_cast

class GetTriggerApprovalConfig {
  /// Whether or not approval is needed. If this is set on a build, it will become pending when run,
  /// and will need to be explicitly approved to start.
  final bool approvalRequired;

  GetTriggerApprovalConfig({
    required this.approvalRequired,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['approvalRequired'] = approvalRequired;
    return map;
  }

  factory GetTriggerApprovalConfig.fromMap(Map<String, dynamic> map) {
    return GetTriggerApprovalConfig(
      approvalRequired: map['approvalRequired'] as bool,
    );
  }
}
