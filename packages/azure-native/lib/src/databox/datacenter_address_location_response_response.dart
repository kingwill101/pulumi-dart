// ignore_for_file: unused_element, unnecessary_cast


/// Datacenter address for given storage location.
class DatacenterAddressLocationResponseResponse {
  /// Special instruction for shipping
  final String additionalShippingInformation;
  /// Address type
  final String addressType;
  /// City name
  final String city;
  /// Company name
  final String company;
  /// Contact person name
  final String contactPersonName;
  /// name of the country
  final String country;
  /// Azure Location where the Data Center serves primarily.
  final String dataCenterAzureLocation;
  /// Data center address type
  /// Expected value is 'DatacenterAddressLocation'.
  final String datacenterAddressType;
  /// Phone number
  final String phone;
  /// Phone extension
  final String phoneExtension;
  /// name of the state
  final String state;
  /// Street address line 1
  final String street1;
  /// Street address line 2
  final String street2;
  /// Street address line 3
  final String street3;
  /// List of supported carriers for return shipment.
  final List<String> supportedCarriersForReturnShipment;
  /// Zip code
  final String zip;

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
      additionalShippingInformation: map['additionalShippingInformation'] as String,
      addressType: map['addressType'] as String,
      city: map['city'] as String,
      company: map['company'] as String,
      contactPersonName: map['contactPersonName'] as String,
      country: map['country'] as String,
      dataCenterAzureLocation: map['dataCenterAzureLocation'] as String,
      datacenterAddressType: map['datacenterAddressType'] as String,
      phone: map['phone'] as String,
      phoneExtension: map['phoneExtension'] as String,
      state: map['state'] as String,
      street1: map['street1'] as String,
      street2: map['street2'] as String,
      street3: map['street3'] as String,
      supportedCarriersForReturnShipment: (map['supportedCarriersForReturnShipment'] as List).cast<String>(),
      zip: map['zip'] as String,
    );
  }
}

