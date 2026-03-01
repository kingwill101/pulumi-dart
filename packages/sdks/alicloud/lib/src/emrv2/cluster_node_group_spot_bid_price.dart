// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeGroupSpotBidPrice {
  /// The spot bid price of a PayAsYouGo instance.
  final int bidPrice;
  /// Host Ecs instance type.
  final String instanceType;

  /// Creates a new [ClusterNodeGroupSpotBidPrice].
  /// [bidPrice] The spot bid price of a PayAsYouGo instance.
  /// [instanceType] Host Ecs instance type.
  ClusterNodeGroupSpotBidPrice({
    required this.bidPrice,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bidPrice': bidPrice,
      'instanceType': instanceType,
    };
  }

  factory ClusterNodeGroupSpotBidPrice.fromMap(Map<String, dynamic> map) {
    return ClusterNodeGroupSpotBidPrice(
      bidPrice: map['bidPrice'] as int,
      instanceType: map['instanceType'] as String,
    );
  }
}

