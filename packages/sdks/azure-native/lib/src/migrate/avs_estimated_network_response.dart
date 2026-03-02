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
  AvsEstimatedNetworkResponse({
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
      monthlyPrice: map['monthlyPrice'] == null ? null : (map['monthlyPrice']! as double).input(),
      networkType: map['networkType'] == null ? null : (map['networkType']! as String).input(),
    );
  }
}

