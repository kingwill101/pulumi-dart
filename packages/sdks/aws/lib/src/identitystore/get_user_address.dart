// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserAddress {
  /// The country that this address is in.
  final pulumi.Input<String> country;
  /// The name that is typically displayed when the name is shown for display.
  final pulumi.Input<String> formatted;
  /// The address locality.
  final pulumi.Input<String> locality;
  /// The postal code of the address.
  final pulumi.Input<String> postalCode;
  /// When `true`, this is the primary phone number associated with the user.
  final pulumi.Input<bool> primary;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String> region;
  /// The street of the address.
  final pulumi.Input<String> streetAddress;
  /// The type of phone number.
  final pulumi.Input<String> type;

  /// Creates a new [GetUserAddress].
  /// [country] The country that this address is in.
  /// [formatted] The name that is typically displayed when the name is shown for display.
  /// [locality] The address locality.
  /// [postalCode] The postal code of the address.
  /// [primary] When `true`, this is the primary phone number associated with the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streetAddress] The street of the address.
  /// [type] The type of phone number.
  const GetUserAddress({
    required this.country,
    required this.formatted,
    required this.locality,
    required this.postalCode,
    required this.primary,
    required this.region,
    required this.streetAddress,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': country,
      'formatted': formatted,
      'locality': locality,
      'postalCode': postalCode,
      'primary': primary,
      'region': region,
      'streetAddress': streetAddress,
      'type': type,
    };
  }

  factory GetUserAddress.fromMap(Map<String, dynamic> map) {
    return GetUserAddress(
      country: pulumi.Input.fromValue(map['country'] as String),
      formatted: pulumi.Input.fromValue(map['formatted'] as String),
      locality: pulumi.Input.fromValue(map['locality'] as String),
      postalCode: pulumi.Input.fromValue(map['postalCode'] as String),
      primary: pulumi.Input.fromValue(map['primary'] as bool),
      region: pulumi.Input.fromValue(map['region'] as String),
      streetAddress: pulumi.Input.fromValue(map['streetAddress'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
