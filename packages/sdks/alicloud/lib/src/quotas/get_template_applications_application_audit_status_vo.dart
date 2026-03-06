// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTemplateApplicationsApplicationAuditStatusVo {
  /// Approval document quantity.
  final pulumi.Input<int> count;
  /// The approval status of the quota promotion application. Value:-Disagree: reject.-Approve: approved.-Process: under review.-Cancel: Closed.
  final pulumi.Input<String> status;

  /// Creates a new [GetTemplateApplicationsApplicationAuditStatusVo].
  /// [count] Approval document quantity.
  /// [status] The approval status of the quota promotion application. Value:-Disagree: reject.-Approve: approved.-Process: under review.-Cancel: Closed.
  const GetTemplateApplicationsApplicationAuditStatusVo({
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
      count: pulumi.Input.fromValue(map['count'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

