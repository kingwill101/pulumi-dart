// ignore_for_file: unused_element, unnecessary_cast


class GetUserTenantsTenant {
  /// The user tenant id.
  final String id;
  /// The status of the user tenant.
  final String status;
  /// The name of the user tenant.
  final String tenantName;
  /// The user tenant id. Same as id.
  final String tid;

  /// Creates a new [GetUserTenantsTenant].
  /// [id] The user tenant id.
  /// [status] The status of the user tenant.
  /// [tenantName] The name of the user tenant.
  /// [tid] The user tenant id. Same as id.
  GetUserTenantsTenant({
    required this.id,
    required this.status,
    required this.tenantName,
    required this.tid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'status': status,
      'tenantName': tenantName,
      'tid': tid,
    };
  }

  factory GetUserTenantsTenant.fromMap(Map<String, dynamic> map) {
    return GetUserTenantsTenant(
      id: map['id'] as String,
      status: map['status'] as String,
      tenantName: map['tenantName'] as String,
      tid: map['tid'] as String,
    );
  }
}

