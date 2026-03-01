// ignore_for_file: unused_element, unnecessary_cast


class WorkbookIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Workbook. Changing this forces a new resource to be created.
  final List<String>? identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Workbook.
  final String? principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Workbook.
  final String? tenantId;
  /// The type of Managed Service Identity that is configured on this Workbook. Possible values are `UserAssigned`, `SystemAssigned` and `SystemAssigned, UserAssigned`. Changing this forces a new resource to be created.
  final String type;

  /// Creates a new [WorkbookIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Workbook. Changing this forces a new resource to be created.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Workbook.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Workbook.
  /// [type] The type of Managed Service Identity that is configured on this Workbook. Possible values are `UserAssigned`, `SystemAssigned` and `SystemAssigned, UserAssigned`. Changing this forces a new resource to be created.
  WorkbookIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory WorkbookIdentity.fromMap(Map<String, dynamic> map) {
    return WorkbookIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

