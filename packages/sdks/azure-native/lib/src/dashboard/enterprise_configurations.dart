// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enterprise settings of a Grafana instance
class EnterpriseConfigurations {
  /// The AutoRenew setting of the Enterprise subscription
  final pulumi.Input<String>? marketplaceAutoRenew;
  /// The Plan Id of the Azure Marketplace subscription for the Enterprise plugins
  final pulumi.Input<String>? marketplacePlanId;

  /// Creates a new [EnterpriseConfigurations].
  /// [marketplaceAutoRenew] The AutoRenew setting of the Enterprise subscription
  /// [marketplacePlanId] The Plan Id of the Azure Marketplace subscription for the Enterprise plugins
  EnterpriseConfigurations({
    this.marketplaceAutoRenew,
    this.marketplacePlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplaceAutoRenew': ?marketplaceAutoRenew,
      'marketplacePlanId': ?marketplacePlanId,
    };
  }

  factory EnterpriseConfigurations.fromMap(Map<String, dynamic> map) {
    return EnterpriseConfigurations(
      marketplaceAutoRenew: map['marketplaceAutoRenew'] == null ? null : (map['marketplaceAutoRenew'] as String).input(),
      marketplacePlanId: map['marketplacePlanId'] == null ? null : (map['marketplacePlanId'] as String).input(),
    );
  }
}

