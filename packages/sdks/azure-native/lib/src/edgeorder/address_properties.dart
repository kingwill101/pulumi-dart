// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_details.dart';
import 'shipping_address.dart';

/// Address Properties.
class AddressProperties {
  /// Type of address based on its usage context.
  final pulumi.Input<String>? addressClassification;
  /// Contact details for the address.
  final pulumi.Input<ContactDetails>? contactDetails;
  /// Shipping details for the address.
  final pulumi.Input<ShippingAddress>? shippingAddress;

  /// Creates a new [AddressProperties].
  /// [addressClassification] Type of address based on its usage context.
  /// [contactDetails] Contact details for the address.
  /// [shippingAddress] Shipping details for the address.
  AddressProperties({
    this.addressClassification,
    this.contactDetails,
    this.shippingAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressClassification': ?addressClassification,
      'contactDetails': ?pulumi.Input.mapOptionalInputValue<ContactDetails, Map<String, dynamic>>(contactDetails, (value) => value.toMap()),
      'shippingAddress': ?pulumi.Input.mapOptionalInputValue<ShippingAddress, Map<String, dynamic>>(shippingAddress, (value) => value.toMap()),
    };
  }

  factory AddressProperties.fromMap(Map<String, dynamic> map) {
    return AddressProperties(
      addressClassification: map['addressClassification'] == null ? null : (map['addressClassification'] as String).input(),
      contactDetails: map['contactDetails'] == null ? null : (ContactDetails.fromMap((map['contactDetails'] as Map).cast<String, dynamic>())).input(),
      shippingAddress: map['shippingAddress'] == null ? null : (ShippingAddress.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

