// ignore_for_file: unused_element, unnecessary_cast


/// Enterprise settings of a Grafana instance
class EnterpriseConfigurationsResponse {
  /// The AutoRenew setting of the Enterprise subscription
  final String? marketplaceAutoRenew;
  /// The Plan Id of the Azure Marketplace subscription for the Enterprise plugins
  final String? marketplacePlanId;

  /// Creates a new [EnterpriseConfigurationsResponse].
  /// [marketplaceAutoRenew] The AutoRenew setting of the Enterprise subscription
  /// [marketplacePlanId] The Plan Id of the Azure Marketplace subscription for the Enterprise plugins
  EnterpriseConfigurationsResponse({
    this.marketplaceAutoRenew,
    this.marketplacePlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplaceAutoRenew': ?marketplaceAutoRenew,
      'marketplacePlanId': ?marketplacePlanId,
    };
  }

  factory EnterpriseConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseConfigurationsResponse(
      marketplaceAutoRenew: map['marketplaceAutoRenew'] == null ? null : map['marketplaceAutoRenew'] as String,
      marketplacePlanId: map['marketplacePlanId'] == null ? null : map['marketplacePlanId'] as String,
    );
  }
}

