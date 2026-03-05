// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupSpotBidPrice {
  /// The spot bid price of a PayAsYouGo instance.
  final pulumi.Input<int> bidPrice;
  /// Host Ecs instance type.
  final pulumi.Input<String> instanceType;

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
      bidPrice: pulumi.Input.fromValue(map['bidPrice'] as int),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}

