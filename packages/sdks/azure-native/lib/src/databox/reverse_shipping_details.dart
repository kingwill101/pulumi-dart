// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_info.dart';
import 'shipping_address.dart';

/// Reverse Shipping Address and contact details for a job.
class ReverseShippingDetails {
  /// Contact Info.
  final pulumi.Input<ContactInfo>? contactDetails;
  /// Shipping address where customer wishes to receive the device.
  final pulumi.Input<ShippingAddress>? shippingAddress;

  /// Creates a new [ReverseShippingDetails].
  /// [contactDetails] Contact Info.
  /// [shippingAddress] Shipping address where customer wishes to receive the device.
  ReverseShippingDetails({
    this.contactDetails,
    this.shippingAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactDetails': ?pulumi.Input.mapOptionalInputValue<ContactInfo, Map<String, dynamic>>(contactDetails, (value) => value.toMap()),
      'shippingAddress': ?pulumi.Input.mapOptionalInputValue<ShippingAddress, Map<String, dynamic>>(shippingAddress, (value) => value.toMap()),
    };
  }

  factory ReverseShippingDetails.fromMap(Map<String, dynamic> map) {
    return ReverseShippingDetails(
      contactDetails: map['contactDetails'] == null ? null : (ContactInfo.fromMap((map['contactDetails'] as Map).cast<String, dynamic>())).input(),
      shippingAddress: map['shippingAddress'] == null ? null : (ShippingAddress.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

