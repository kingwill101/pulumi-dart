// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details on the Estimated Network Costs for AVS Assessment.
class AvsEstimatedNetworkResponse {
  /// Monthly cost for network type.
  final pulumi.Input<double>? monthlyPrice;
  /// Recommended Network Sku.
  final pulumi.Input<String>? networkType;

  /// Creates a new [AvsEstimatedNetworkResponse].
  /// [monthlyPrice] Monthly cost for network type.
  /// [networkType] Recommended Network Sku.
  const AvsEstimatedNetworkResponse({
    this.monthlyPrice,
    this.networkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthlyPrice': ?monthlyPrice,
      'networkType': ?networkType,
    };
  }

  factory AvsEstimatedNetworkResponse.fromMap(Map<String, dynamic> map) {
    return AvsEstimatedNetworkResponse(
      monthlyPrice: (() { final guardedValue = map['monthlyPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
