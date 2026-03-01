// ignore_for_file: unused_element, unnecessary_cast


class AccessConnectorIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to the Databricks Access Connector. Only one User Assigned Managed Identity ID is supported per Databricks Access Connector resource.
  ///
  /// > **Note:** `identity_ids` are required when `type` is set to `UserAssigned`.
  final List<String>? identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Access Connector.
  final String? principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Access Connector.
  final String? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on the Databricks Access Connector. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned`.
  final String type;

  /// Creates a new [AccessConnectorIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to the Databricks Access Connector. Only one User Assigned Managed Identity ID is supported per Databricks Access Connector resource.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Access Connector.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Access Connector.
  /// [type] Specifies the type of Managed Service Identity that should be configured on the Databricks Access Connector. Possible values are `SystemAssigned`, `UserAssigned`, `SystemAssigned, UserAssigned`.
  AccessConnectorIdentity({
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

  factory AccessConnectorIdentity.fromMap(Map<String, dynamic> map) {
    return AccessConnectorIdentity(
      identityIds: map['identityIds'] == null ? null : (map['identityIds'] as List).cast<String>(),
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

