// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkTransferPricesTypeRegionPrice {
  final double hourly;
  /// The ID representing the Network Transfer Price.
  final String id;
  final double monthly;

  /// Creates a new [GetNetworkTransferPricesTypeRegionPrice].
  /// [hourly] Required.
  /// [id] The ID representing the Network Transfer Price.
  /// [monthly] Required.
  GetNetworkTransferPricesTypeRegionPrice({
    required this.hourly,
    required this.id,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'id': id,
      'monthly': monthly,
    };
  }

  factory GetNetworkTransferPricesTypeRegionPrice.fromMap(Map<String, dynamic> map) {
    return GetNetworkTransferPricesTypeRegionPrice(
      hourly: map['hourly'] as double,
      id: map['id'] as String,
      monthly: map['monthly'] as double,
    );
  }
}

