// ignore_for_file: unused_element, unnecessary_cast


/// Details on the Estimated Network Costs for AVS Assessment.
class AvsEstimatedNetworkResponse {
  /// Monthly cost for network type.
  final double? monthlyPrice;
  /// Recommended Network Sku.
  final String? networkType;

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
      monthlyPrice: map['monthlyPrice'] == null ? null : map['monthlyPrice'] as double,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
    );
  }
}

