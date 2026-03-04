// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enterprise settings of a Grafana instance
class EnterpriseConfigurationsResponse {
  /// The AutoRenew setting of the Enterprise subscription
  final pulumi.Input<String>? marketplaceAutoRenew;

  /// The Plan Id of the Azure Marketplace subscription for the Enterprise plugins
  final pulumi.Input<String>? marketplacePlanId;

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
      marketplaceAutoRenew: (() {
        final guardedValue = map['marketplaceAutoRenew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      marketplacePlanId: (() {
        final guardedValue = map['marketplacePlanId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
