// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about the Microsoft datacenter to which the drives should be shipped.
class ShippingInformationResponse {
  /// Additional shipping information for customer, specific to datacenter to which customer should send their disks.
  final pulumi.Input<String> additionalInformation;
  /// The city name to use when returning the drives.
  final pulumi.Input<String>? city;
  /// The country or region to use when returning the drives.
  final pulumi.Input<String>? countryOrRegion;
  /// Phone number of the recipient of the returned drives.
  final pulumi.Input<String>? phone;
  /// The postal code to use when returning the drives.
  final pulumi.Input<String>? postalCode;
  /// The name of the recipient who will receive the hard drives when they are returned.
  final pulumi.Input<String>? recipientName;
  /// The state or province to use when returning the drives.
  final pulumi.Input<String>? stateOrProvince;
  /// The first line of the street address to use when returning the drives.
  final pulumi.Input<String>? streetAddress1;
  /// The second line of the street address to use when returning the drives.
  final pulumi.Input<String>? streetAddress2;

  /// Creates a new [ShippingInformationResponse].
  /// [additionalInformation] Additional shipping information for customer, specific to datacenter to which customer should send their disks.
  /// [city] The city name to use when returning the drives.
  /// [countryOrRegion] The country or region to use when returning the drives.
  /// [phone] Phone number of the recipient of the returned drives.
  /// [postalCode] The postal code to use when returning the drives.
  /// [recipientName] The name of the recipient who will receive the hard drives when they are returned.
  /// [stateOrProvince] The state or province to use when returning the drives.
  /// [streetAddress1] The first line of the street address to use when returning the drives.
  /// [streetAddress2] The second line of the street address to use when returning the drives.
  ShippingInformationResponse({
    required this.additionalInformation,
    this.city,
    this.countryOrRegion,
    this.phone,
    this.postalCode,
    this.recipientName,
    this.stateOrProvince,
    this.streetAddress1,
    this.streetAddress2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInformation': additionalInformation,
      'city': ?city,
      'countryOrRegion': ?countryOrRegion,
      'phone': ?phone,
      'postalCode': ?postalCode,
      'recipientName': ?recipientName,
      'stateOrProvince': ?stateOrProvince,
      'streetAddress1': ?streetAddress1,
      'streetAddress2': ?streetAddress2,
    };
  }

  factory ShippingInformationResponse.fromMap(Map<String, dynamic> map) {
    return ShippingInformationResponse(
      additionalInformation: pulumi.Input.fromValue(map['additionalInformation'] as String),
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      countryOrRegion: (() { final guardedValue = map['countryOrRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postalCode: (() { final guardedValue = map['postalCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recipientName: (() { final guardedValue = map['recipientName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateOrProvince: (() { final guardedValue = map['stateOrProvince']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streetAddress1: (() { final guardedValue = map['streetAddress1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streetAddress2: (() { final guardedValue = map['streetAddress2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

