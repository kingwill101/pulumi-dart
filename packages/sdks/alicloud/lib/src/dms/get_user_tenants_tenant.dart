// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserTenantsTenant {
  /// The user tenant id.
  final pulumi.Input<String> id;
  /// The status of the user tenant.
  final pulumi.Input<String> status;
  /// The name of the user tenant.
  final pulumi.Input<String> tenantName;
  /// The user tenant id. Same as id.
  final pulumi.Input<String> tid;

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
      id: (map['id'] as String).input(),
      status: (map['status'] as String).input(),
      tenantName: (map['tenantName'] as String).input(),
      tid: (map['tid'] as String).input(),
    );
  }
}

