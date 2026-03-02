// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Datacenter address for given storage location.
class DatacenterAddressLocationResponseResponse {
  /// Special instruction for shipping
  final pulumi.Input<String> additionalShippingInformation;
  /// Address type
  final pulumi.Input<String> addressType;
  /// City name
  final pulumi.Input<String> city;
  /// Company name
  final pulumi.Input<String> company;
  /// Contact person name
  final pulumi.Input<String> contactPersonName;
  /// name of the country
  final pulumi.Input<String> country;
  /// Azure Location where the Data Center serves primarily.
  final pulumi.Input<String> dataCenterAzureLocation;
  /// Data center address type
  /// Expected value is 'DatacenterAddressLocation'.
  final pulumi.Input<String> datacenterAddressType;
  /// Phone number
  final pulumi.Input<String> phone;
  /// Phone extension
  final pulumi.Input<String> phoneExtension;
  /// name of the state
  final pulumi.Input<String> state;
  /// Street address line 1
  final pulumi.Input<String> street1;
  /// Street address line 2
  final pulumi.Input<String> street2;
  /// Street address line 3
  final pulumi.Input<String> street3;
  /// List of supported carriers for return shipment.
  final pulumi.Input<List<String>> supportedCarriersForReturnShipment;
  /// Zip code
  final pulumi.Input<String> zip;

  /// Creates a new [DatacenterAddressLocationResponseResponse].
  /// [additionalShippingInformation] Special instruction for shipping
  /// [addressType] Address type
  /// [city] City name
  /// [company] Company name
  /// [contactPersonName] Contact person name
  /// [country] name of the country
  /// [dataCenterAzureLocation] Azure Location where the Data Center serves primarily.
  /// [datacenterAddressType] Data center address type
  /// [phone] Phone number
  /// [phoneExtension] Phone extension
  /// [state] name of the state
  /// [street1] Street address line 1
  /// [street2] Street address line 2
  /// [street3] Street address line 3
  /// [supportedCarriersForReturnShipment] List of supported carriers for return shipment.
  /// [zip] Zip code
  DatacenterAddressLocationResponseResponse({
    required this.additionalShippingInformation,
    required this.addressType,
    required this.city,
    required this.company,
    required this.contactPersonName,
    required this.country,
    required this.dataCenterAzureLocation,
    required this.datacenterAddressType,
    required this.phone,
    required this.phoneExtension,
    required this.state,
    required this.street1,
    required this.street2,
    required this.street3,
    required this.supportedCarriersForReturnShipment,
    required this.zip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalShippingInformation': additionalShippingInformation,
      'addressType': addressType,
      'city': city,
      'company': company,
      'contactPersonName': contactPersonName,
      'country': country,
      'dataCenterAzureLocation': dataCenterAzureLocation,
      'datacenterAddressType': datacenterAddressType,
      'phone': phone,
      'phoneExtension': phoneExtension,
      'state': state,
      'street1': street1,
      'street2': street2,
      'street3': street3,
      'supportedCarriersForReturnShipment': supportedCarriersForReturnShipment,
      'zip': zip,
    };
  }

  factory DatacenterAddressLocationResponseResponse.fromMap(Map<String, dynamic> map) {
    return DatacenterAddressLocationResponseResponse(
      additionalShippingInformation: (map['additionalShippingInformation'] as String).input(),
      addressType: (map['addressType'] as String).input(),
      city: (map['city'] as String).input(),
      company: (map['company'] as String).input(),
      contactPersonName: (map['contactPersonName'] as String).input(),
      country: (map['country'] as String).input(),
      dataCenterAzureLocation: (map['dataCenterAzureLocation'] as String).input(),
      datacenterAddressType: (map['datacenterAddressType'] as String).input(),
      phone: (map['phone'] as String).input(),
      phoneExtension: (map['phoneExtension'] as String).input(),
      state: (map['state'] as String).input(),
      street1: (map['street1'] as String).input(),
      street2: (map['street2'] as String).input(),
      street3: (map['street3'] as String).input(),
      supportedCarriersForReturnShipment: ((map['supportedCarriersForReturnShipment'] as List).cast<String>()).input(),
      zip: (map['zip'] as String).input(),
    );
  }
}

