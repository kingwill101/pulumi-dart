// ignore_for_file: unused_element, unnecessary_cast


class GetWorkspaceManagedDiskIdentity {
  /// The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys.
  final String principalId;
  /// The UUID of the tenant where the internal databricks storage account was created.
  final String tenantId;
  /// The type of the internal databricks storage account.
  final String type;

  /// Creates a new [GetWorkspaceManagedDiskIdentity].
  /// [principalId] The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys.
  /// [tenantId] The UUID of the tenant where the internal databricks storage account was created.
  /// [type] The type of the internal databricks storage account.
  GetWorkspaceManagedDiskIdentity({
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetWorkspaceManagedDiskIdentity.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagedDiskIdentity(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

