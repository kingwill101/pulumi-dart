// ignore_for_file: unused_element, unnecessary_cast

import 'contact_details.dart';
import 'shipping_address.dart';

/// Address Properties.
class AddressProperties {
  /// Type of address based on its usage context.
  final String? addressClassification;
  /// Contact details for the address.
  final ContactDetails? contactDetails;
  /// Shipping details for the address.
  final ShippingAddress? shippingAddress;

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
      'contactDetails': ?contactDetails == null ? null : contactDetails!.toMap(),
      'shippingAddress': ?shippingAddress == null ? null : shippingAddress!.toMap(),
    };
  }

  factory AddressProperties.fromMap(Map<String, dynamic> map) {
    return AddressProperties(
      addressClassification: map['addressClassification'] == null ? null : map['addressClassification'] as String,
      contactDetails: map['contactDetails'] == null ? null : ContactDetails.fromMap((map['contactDetails'] as Map).cast<String, dynamic>()),
      shippingAddress: map['shippingAddress'] == null ? null : ShippingAddress.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>()),
    );
  }
}

