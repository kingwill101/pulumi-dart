// ignore_for_file: unused_element, unnecessary_cast


/// The Managed Identity details for storage account.
class ManagedIdentityConfigurationResponse {
  /// The objectId of the Managed Identity that is linked to the Managed Storage account.
  final String principalId;
  /// The tenant Id where the Managed Identity is created.
  final String tenantId;
  /// The type of Identity created. It can be either SystemAssigned or UserAssigned.
  final String type;

  /// Creates a new [ManagedIdentityConfigurationResponse].
  /// [principalId] The objectId of the Managed Identity that is linked to the Managed Storage account.
  /// [tenantId] The tenant Id where the Managed Identity is created.
  /// [type] The type of Identity created. It can be either SystemAssigned or UserAssigned.
  ManagedIdentityConfigurationResponse({
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

  factory ManagedIdentityConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIdentityConfigurationResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

