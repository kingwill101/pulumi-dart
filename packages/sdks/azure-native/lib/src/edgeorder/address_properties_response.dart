// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_details_response.dart';
import 'shipping_address_response.dart';

/// Address Properties.
class AddressPropertiesResponse {
  /// Type of address based on its usage context.
  final pulumi.Input<String>? addressClassification;
  /// Status of address validation.
  final pulumi.Input<String> addressValidationStatus;
  /// Contact details for the address.
  final pulumi.Input<ContactDetailsResponse>? contactDetails;
  /// Provisioning state
  final pulumi.Input<String> provisioningState;
  /// Shipping details for the address.
  final pulumi.Input<ShippingAddressResponse>? shippingAddress;

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
      'contactDetails': ?pulumi.Input.mapOptionalInputValue<ContactDetailsResponse, Map<String, dynamic>>(contactDetails, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'shippingAddress': ?pulumi.Input.mapOptionalInputValue<ShippingAddressResponse, Map<String, dynamic>>(shippingAddress, (value) => value.toMap()),
    };
  }

  factory AddressPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AddressPropertiesResponse(
      addressClassification: map['addressClassification'] == null ? null : (map['addressClassification'] as String).input(),
      addressValidationStatus: (map['addressValidationStatus'] as String).input(),
      contactDetails: map['contactDetails'] == null ? null : (ContactDetailsResponse.fromMap((map['contactDetails'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      shippingAddress: map['shippingAddress'] == null ? null : (ShippingAddressResponse.fromMap((map['shippingAddress'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

