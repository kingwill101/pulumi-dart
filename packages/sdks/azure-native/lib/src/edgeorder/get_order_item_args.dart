// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edgeorder_get_order_item_args_doc}
/// Arguments for getOrderItem.
/// {@endtemplate}
/// {@macro pulumi_edgeorder_get_order_item_args_doc}
class GetOrderItemArgs {
  /// $expand is supported on parent device details, device details, forward shipping details and reverse shipping details parameters. Each of these can be provided as a comma separated list. Parent Device Details for order item provides details on the devices of the product, Device Details for order item provides details on the devices of the child configurations of the product, Forward and Reverse Shipping details provide forward and reverse shipping details respectively.
  final pulumi.Input<String>? expand;

  /// The name of the order item.
  final pulumi.Input<String> orderItemName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetOrderItemArgs].
  /// [expand] $expand is supported on parent device details, device details, forward shipping details and reverse shipping details parameters. Each of these can be provided as a comma separated list. Parent Device Details for order item provides details on the devices of the product, Device Details for order item provides details on the devices of the child configurations of the product, Forward and Reverse Shipping details provide forward and reverse shipping details respectively.
  /// [orderItemName] The name of the order item.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetOrderItemArgs({
    this.expand,
    required this.orderItemName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'orderItemName': orderItemName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetOrderItemArgs.fromMap(Map<String, dynamic> map) {
    return GetOrderItemArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orderItemName: pulumi.Input.fromValue(map['orderItemName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
