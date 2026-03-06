// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_details.dart';
import 'shipping_address.dart';

/// {@template pulumi_edgeorder_address_args_doc}
/// The set of arguments for Address.
/// {@endtemplate}
/// {@macro pulumi_edgeorder_address_args_doc}
class AddressArgs {
  /// Type of address based on its usage context.
  final pulumi.Input<String>? addressClassification;
  /// The name of the address Resource within the specified resource group. address names must be between 3 and 24 characters in length and use any alphanumeric and underscore only.
  final pulumi.Input<String>? addressName;
  /// Contact details for the address.
  final pulumi.Input<ContactDetails>? contactDetails;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Shipping details for the address.
  final pulumi.Input<ShippingAddress>? shippingAddress;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AddressArgs].
  /// [addressClassification] Type of address based on its usage context.
  /// [addressName] The name of the address Resource within the specified resource group. address names must be between 3 and 24 characters in length and use any alphanumeric and underscore only.
  /// [contactDetails] Contact details for the address.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [shippingAddress] Shipping details for the address.
  /// [tags] Resource tags.
  const AddressArgs({
    this.addressClassification,
    this.addressName,
    this.contactDetails,
    this.location,
    required this.resourceGroupName,
    this.shippingAddress,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressClassification': ?addressClassification,
      'addressName': ?addressName,
      'contactDetails': ?pulumi.Input.mapOptionalInputValue<ContactDetails, Map<String, dynamic>>(contactDetails, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'shippingAddress': ?pulumi.Input.mapOptionalInputValue<ShippingAddress, Map<String, dynamic>>(shippingAddress, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AddressArgs.fromMap(Map<String, dynamic> map) {
    return AddressArgs(
      addressClassification: (() { final guardedValue = map['addressClassification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      addressName: (() { final guardedValue = map['addressName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactDetails: (() { final guardedValue = map['contactDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContactDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shippingAddress: (() { final guardedValue = map['shippingAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShippingAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

