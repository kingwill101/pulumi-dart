// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_properties.dart';

/// Address details for an order item.
class AddressDetails {
  /// Customer address and contact details.
  final pulumi.Input<AddressProperties> forwardAddress;

  /// Creates a new [AddressDetails].
  /// [forwardAddress] Customer address and contact details.
  const AddressDetails({
    required this.forwardAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardAddress': pulumi.Input.mapInputValue<AddressProperties, Map<String, dynamic>>(forwardAddress, (value) => value.toMap()),
    };
  }

  factory AddressDetails.fromMap(Map<String, dynamic> map) {
    return AddressDetails(
      forwardAddress: pulumi.Input.fromValue(AddressProperties.fromMap((map['forwardAddress']! as Map).cast<String, dynamic>())),
    );
  }
}

