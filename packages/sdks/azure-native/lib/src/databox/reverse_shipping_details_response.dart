// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_info_response.dart';
import 'shipping_address_response.dart';

/// Reverse Shipping Address and contact details for a job.
class ReverseShippingDetailsResponse {
  /// Contact Info.
  final pulumi.Input<ContactInfoResponse>? contactDetails;
  /// A flag to indicate whether Reverse Shipping details are updated or not after device has been prepared.
  /// Read only field
  final pulumi.Input<bool> isUpdated;
  /// Shipping address where customer wishes to receive the device.
  final pulumi.Input<ShippingAddressResponse>? shippingAddress;

  /// Creates a new [ReverseShippingDetailsResponse].
  /// [contactDetails] Contact Info.
  /// [isUpdated] A flag to indicate whether Reverse Shipping details are updated or not after device has been prepared.
  /// [shippingAddress] Shipping address where customer wishes to receive the device.
  ReverseShippingDetailsResponse({
    this.contactDetails,
    required this.isUpdated,
    this.shippingAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactDetails': ?pulumi.Input.mapOptionalInputValue<ContactInfoResponse, Map<String, dynamic>>(contactDetails, (value) => value.toMap()),
      'isUpdated': isUpdated,
      'shippingAddress': ?pulumi.Input.mapOptionalInputValue<ShippingAddressResponse, Map<String, dynamic>>(shippingAddress, (value) => value.toMap()),
    };
  }

  factory ReverseShippingDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ReverseShippingDetailsResponse(
      contactDetails: map['contactDetails'] == null ? null : (ContactInfoResponse.fromMap((map['contactDetails'] as Map).cast<String, dynamic>())).input(),
      isUpdated: (map['isUpdated'] as bool).input(),
      shippingAddress: map['shippingAddress'] == null ? null : (ShippingAddressResponse.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

