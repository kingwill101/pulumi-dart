// ignore_for_file: unused_element, unnecessary_cast


/// Identity for Azure Bare Metal Storage Instance.
class AzureBareMetalStorageInstanceIdentityResponse {
  /// The principal ID of Azure Bare Metal Storage Instance identity. This property will only be provided for a system assigned identity.
  final String principalId;
  /// The tenant ID associated with the Azure Bare Metal Storage Instance. This property will only be provided for a system assigned identity.
  final String tenantId;
  /// The type of identity used for the Azure Bare Metal Storage Instance. The type 'SystemAssigned' refers to an implicitly created identity. The type 'None' will remove any identities from the Azure Bare Metal Storage Instance.
  final String? type;

  /// Creates a new [AzureBareMetalStorageInstanceIdentityResponse].
  /// [principalId] The principal ID of Azure Bare Metal Storage Instance identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant ID associated with the Azure Bare Metal Storage Instance. This property will only be provided for a system assigned identity.
  /// [type] The type of identity used for the Azure Bare Metal Storage Instance. The type 'SystemAssigned' refers to an implicitly created identity. The type 'None' will remove any identities from the Azure Bare Metal Storage Instance.
  AzureBareMetalStorageInstanceIdentityResponse({
    required this.principalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory AzureBareMetalStorageInstanceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return AzureBareMetalStorageInstanceIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

