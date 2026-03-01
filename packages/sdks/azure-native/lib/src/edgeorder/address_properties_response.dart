// ignore_for_file: unused_element, unnecessary_cast

import 'contact_details_response.dart';
import 'shipping_address_response.dart';

/// Address Properties.
class AddressPropertiesResponse {
  /// Type of address based on its usage context.
  final String? addressClassification;
  /// Status of address validation.
  final String addressValidationStatus;
  /// Contact details for the address.
  final ContactDetailsResponse? contactDetails;
  /// Provisioning state
  final String provisioningState;
  /// Shipping details for the address.
  final ShippingAddressResponse? shippingAddress;

  /// Creates a new [AddressPropertiesResponse].
  /// [addressClassification] Type of address based on its usage context.
  /// [addressValidationStatus] Status of address validation.
  /// [contactDetails] Contact details for the address.
  /// [provisioningState] Provisioning state
  /// [shippingAddress] Shipping details for the address.
  AddressPropertiesResponse({
    this.addressClassification,
    required this.addressValidationStatus,
    this.contactDetails,
    required this.provisioningState,
    this.shippingAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressClassification': ?addressClassification,
      'addressValidationStatus': addressValidationStatus,
      'contactDetails': ?contactDetails == null ? null : contactDetails!.toMap(),
      'provisioningState': provisioningState,
      'shippingAddress': ?shippingAddress == null ? null : shippingAddress!.toMap(),
    };
  }

  factory AddressPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AddressPropertiesResponse(
      addressClassification: map['addressClassification'] == null ? null : map['addressClassification'] as String,
      addressValidationStatus: map['addressValidationStatus'] as String,
      contactDetails: map['contactDetails'] == null ? null : ContactDetailsResponse.fromMap((map['contactDetails'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      shippingAddress: map['shippingAddress'] == null ? null : ShippingAddressResponse.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>()),
    );
  }
}

