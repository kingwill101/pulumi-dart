// ignore_for_file: unused_element, unnecessary_cast


/// Information about a Provider. A Provider is an entity that offers Targets to run Azure Quantum Jobs.
class ProviderResponse {
  /// The provider's marketplace application display name.
  final String? applicationName;
  /// A Uri identifying the specific instance of this provider.
  final String? instanceUri;
  /// Unique id of this provider.
  final String? providerId;
  /// The sku associated with pricing information for this provider.
  final String? providerSku;
  /// Provisioning status field
  final String? provisioningState;
  /// Id to track resource usage for the provider.
  final String? resourceUsageId;

  /// Creates a new [ProviderResponse].
  /// [applicationName] The provider's marketplace application display name.
  /// [instanceUri] A Uri identifying the specific instance of this provider.
  /// [providerId] Unique id of this provider.
  /// [providerSku] The sku associated with pricing information for this provider.
  /// [provisioningState] Provisioning status field
  /// [resourceUsageId] Id to track resource usage for the provider.
  ProviderResponse({
    this.applicationName,
    this.instanceUri,
    this.providerId,
    this.providerSku,
    this.provisioningState,
    this.resourceUsageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'instanceUri': ?instanceUri,
      'providerId': ?providerId,
      'providerSku': ?providerSku,
      'provisioningState': ?provisioningState,
      'resourceUsageId': ?resourceUsageId,
    };
  }

  factory ProviderResponse.fromMap(Map<String, dynamic> map) {
    return ProviderResponse(
      applicationName: map['applicationName'] == null ? null : map['applicationName'] as String,
      instanceUri: map['instanceUri'] == null ? null : map['instanceUri'] as String,
      providerId: map['providerId'] == null ? null : map['providerId'] as String,
      providerSku: map['providerSku'] == null ? null : map['providerSku'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceUsageId: map['resourceUsageId'] == null ? null : map['resourceUsageId'] as String,
    );
  }
}

