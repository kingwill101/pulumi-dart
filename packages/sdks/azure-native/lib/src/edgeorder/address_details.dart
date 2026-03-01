// ignore_for_file: unused_element, unnecessary_cast

import 'address_properties.dart';

/// Address details for an order item.
class AddressDetails {
  /// Customer address and contact details.
  final AddressProperties forwardAddress;

  /// Creates a new [AddressDetails].
  /// [forwardAddress] Customer address and contact details.
  AddressDetails({
    required this.forwardAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardAddress': forwardAddress.toMap(),
    };
  }

  factory AddressDetails.fromMap(Map<String, dynamic> map) {
    return AddressDetails(
      forwardAddress: AddressProperties.fromMap((map['forwardAddress'] as Map).cast<String, dynamic>()),
    );
  }
}

