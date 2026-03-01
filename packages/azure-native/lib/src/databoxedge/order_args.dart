// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address.dart';
import 'contact_details.dart';

/// {@template pulumi_databoxedge_order_args_doc}
/// The set of arguments for Order.
/// {@endtemplate}
/// {@macro pulumi_databoxedge_order_args_doc}
class OrderArgs {
  /// The contact details.
  final pulumi.Input<ContactDetails> contactInformation;
  /// The order details of a device.
  final pulumi.Input<String> deviceName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// ShipmentType of the order
  final pulumi.Input<String>? shipmentType;
  /// The shipping address.
  final pulumi.Input<Address>? shippingAddress;

  /// Creates a new [OrderArgs].
  /// [contactInformation] The contact details.
  /// [deviceName] The order details of a device.
  /// [resourceGroupName] The resource group name.
  /// [shipmentType] ShipmentType of the order
  /// [shippingAddress] The shipping address.
  OrderArgs({
    required ContactDetails contactInformation,
    required String deviceName,
    required String resourceGroupName,
    String? shipmentType,
    Address? shippingAddress,
  }) :
      contactInformation = pulumi.Input.asInput<ContactDetails>(contactInformation),
      deviceName = pulumi.Input.asInput<String>(deviceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shipmentType = pulumi.Input.asOptionalInput<String>(shipmentType),
      shippingAddress = pulumi.Input.asOptionalInput<Address>(shippingAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactInformation': pulumi.Input.mapInputValue<ContactDetails, Map<String, dynamic>>(contactInformation, (value) => value.toMap()),
      'deviceName': deviceName,
      'resourceGroupName': resourceGroupName,
      'shipmentType': ?shipmentType,
      'shippingAddress': ?pulumi.Input.mapOptionalInputValue<Address, Map<String, dynamic>>(shippingAddress, (value) => value.toMap()),
    };
  }

  factory OrderArgs.fromMap(Map<String, dynamic> map) {
    return OrderArgs(
      contactInformation: ContactDetails.fromMap((map['contactInformation'] as Map).cast<String, dynamic>()),
      deviceName: map['deviceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shipmentType: map['shipmentType'] == null ? null : map['shipmentType'] as String,
      shippingAddress: map['shippingAddress'] == null ? null : Address.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>()),
    );
  }
}

