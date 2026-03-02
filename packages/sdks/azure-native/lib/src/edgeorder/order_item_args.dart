// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_details.dart';
import 'order_item_details.dart';
import 'resource_identity.dart';

/// {@template pulumi_edgeorder_order_item_args_doc}
/// The set of arguments for OrderItem.
/// {@endtemplate}
/// {@macro pulumi_edgeorder_order_item_args_doc}
class OrderItemArgs {
  /// Represents shipping and return address for order item.
  final pulumi.Input<AddressDetails>? addressDetails;
  /// Msi identity of the resource
  final pulumi.Input<ResourceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Id of the order to which order item belongs to.
  final pulumi.Input<String> orderId;
  /// Represents order item details.
  final pulumi.Input<OrderItemDetails> orderItemDetails;
  /// The name of the order item.
  final pulumi.Input<String>? orderItemName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [OrderItemArgs].
  /// [addressDetails] Represents shipping and return address for order item.
  /// [identity] Msi identity of the resource
  /// [location] The geo-location where the resource lives
  /// [orderId] Id of the order to which order item belongs to.
  /// [orderItemDetails] Represents order item details.
  /// [orderItemName] The name of the order item.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  OrderItemArgs({
    this.addressDetails,
    this.identity,
    this.location,
    required this.orderId,
    required this.orderItemDetails,
    this.orderItemName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressDetails': ?pulumi.Input.mapOptionalInputValue<AddressDetails, Map<String, dynamic>>(addressDetails, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'orderId': orderId,
      'orderItemDetails': pulumi.Input.mapInputValue<OrderItemDetails, Map<String, dynamic>>(orderItemDetails, (value) => value.toMap()),
      'orderItemName': ?orderItemName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory OrderItemArgs.fromMap(Map<String, dynamic> map) {
    return OrderItemArgs(
      addressDetails: map['addressDetails'] == null ? null : (AddressDetails.fromMap((map['addressDetails']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ResourceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      orderId: (map['orderId'] as String).input(),
      orderItemDetails: (OrderItemDetails.fromMap((map['orderItemDetails'] as Map).cast<String, dynamic>())).input(),
      orderItemName: map['orderItemName'] == null ? null : (map['orderItemName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

