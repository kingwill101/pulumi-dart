// ignore_for_file: unused_element, unnecessary_cast

import 'contact_info_response.dart';
import 'shipping_address_response.dart';

/// Reverse Shipping Address and contact details for a job.
class ReverseShippingDetailsResponse {
  /// Contact Info.
  final ContactInfoResponse? contactDetails;
  /// A flag to indicate whether Reverse Shipping details are updated or not after device has been prepared.
  /// Read only field
  final bool isUpdated;
  /// Shipping address where customer wishes to receive the device.
  final ShippingAddressResponse? shippingAddress;

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
      'contactDetails': ?contactDetails == null ? null : contactDetails!.toMap(),
      'isUpdated': isUpdated,
      'shippingAddress': ?shippingAddress == null ? null : shippingAddress!.toMap(),
    };
  }

  factory ReverseShippingDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ReverseShippingDetailsResponse(
      contactDetails: map['contactDetails'] == null ? null : ContactInfoResponse.fromMap((map['contactDetails'] as Map).cast<String, dynamic>()),
      isUpdated: map['isUpdated'] as bool,
      shippingAddress: map['shippingAddress'] == null ? null : ShippingAddressResponse.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>()),
    );
  }
}

