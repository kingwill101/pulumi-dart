// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Marketplace Subscription
class MarketplaceSaaSInfoResponseMarketplaceSubscription {
  /// Marketplace Subscription Id. This is a GUID-formatted string.
  final pulumi.Input<String>? id;

  /// Creates a new [MarketplaceSaaSInfoResponseMarketplaceSubscription].
  /// [id] Marketplace Subscription Id. This is a GUID-formatted string.
  const MarketplaceSaaSInfoResponseMarketplaceSubscription({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory MarketplaceSaaSInfoResponseMarketplaceSubscription.fromMap(Map<String, dynamic> map) {
    return MarketplaceSaaSInfoResponseMarketplaceSubscription(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

