// ignore_for_file: unused_element, unnecessary_cast

import 'address_properties_response.dart';

/// Address details for an order item.
class AddressDetailsResponse {
  /// Customer address and contact details.
  final AddressPropertiesResponse forwardAddress;
  /// Return shipping address.
  final AddressPropertiesResponse returnAddress;

  /// Creates a new [AddressDetailsResponse].
  /// [forwardAddress] Customer address and contact details.
  /// [returnAddress] Return shipping address.
  AddressDetailsResponse({
    required this.forwardAddress,
    required this.returnAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardAddress': forwardAddress.toMap(),
      'returnAddress': returnAddress.toMap(),
    };
  }

  factory AddressDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AddressDetailsResponse(
      forwardAddress: AddressPropertiesResponse.fromMap((map['forwardAddress'] as Map).cast<String, dynamic>()),
      returnAddress: AddressPropertiesResponse.fromMap((map['returnAddress'] as Map).cast<String, dynamic>()),
    );
  }
}

