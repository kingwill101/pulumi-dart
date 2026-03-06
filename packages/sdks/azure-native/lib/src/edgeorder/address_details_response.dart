// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_properties_response.dart';

/// Address details for an order item.
class AddressDetailsResponse {
  /// Customer address and contact details.
  final pulumi.Input<AddressPropertiesResponse> forwardAddress;
  /// Return shipping address.
  final pulumi.Input<AddressPropertiesResponse> returnAddress;

  /// Creates a new [AddressDetailsResponse].
  /// [forwardAddress] Customer address and contact details.
  /// [returnAddress] Return shipping address.
  const AddressDetailsResponse({
    required this.forwardAddress,
    required this.returnAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardAddress': pulumi.Input.mapInputValue<AddressPropertiesResponse, Map<String, dynamic>>(forwardAddress, (value) => value.toMap()),
      'returnAddress': pulumi.Input.mapInputValue<AddressPropertiesResponse, Map<String, dynamic>>(returnAddress, (value) => value.toMap()),
    };
  }

  factory AddressDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AddressDetailsResponse(
      forwardAddress: pulumi.Input.fromValue(AddressPropertiesResponse.fromMap((map['forwardAddress']! as Map).cast<String, dynamic>())),
      returnAddress: pulumi.Input.fromValue(AddressPropertiesResponse.fromMap((map['returnAddress']! as Map).cast<String, dynamic>())),
    );
  }
}

