// ignore_for_file: unused_element, unnecessary_cast


class GetTemplateApplicationsApplicationAuditStatusVo {
  /// Approval document quantity.
  final int count;
  /// The approval status of the quota promotion application. Value:-Disagree: reject.-Approve: approved.-Process: under review.-Cancel: Closed.
  final String status;

  /// Creates a new [GetTemplateApplicationsApplicationAuditStatusVo].
  /// [count] Approval document quantity.
  /// [status] The approval status of the quota promotion application. Value:-Disagree: reject.-Approve: approved.-Process: under review.-Cancel: Closed.
  GetTemplateApplicationsApplicationAuditStatusVo({
    required this.count,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'status': status,
    };
  }

  factory GetTemplateApplicationsApplicationAuditStatusVo.fromMap(Map<String, dynamic> map) {
    return GetTemplateApplicationsApplicationAuditStatusVo(
      count: map['count'] as int,
      status: map['status'] as String,
    );
  }
}

