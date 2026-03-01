// ignore_for_file: unused_element, unnecessary_cast

class GetInterconnectLocationsLocation {
  /// The postal address of the Point of Presence.
  final String address;

  /// The availability zone for this InterconnectLocation.
  final String availabilityZone;

  /// A list of features available at this InterconnectLocation.
  final List<String> availableFeatures;

  /// A list of link types available at this InterconnectLocation.
  final List<String> availableLinkTypes;

  /// The city for this location.
  final String city;

  /// The continent for this location.
  final String continent;

  /// A textual description of the resource.
  final String description;

  /// The name of the provider for this facility.
  final String facilityProvider;

  /// A provider-assigned Identifier for this facility.
  final String facilityProviderFacilityId;
  final String name;

  /// The PeeringDB facility ID for this facility.
  final String peeringdbFacilityId;

  /// The URI of the created resource.
  final String selfLink;

  /// The status of this InterconnectLocation.
  final String status;

  /// Reserved for future use.
  final bool supportsPzs;

  /// Creates a new [GetInterconnectLocationsLocation].
  /// [address] The postal address of the Point of Presence.
  /// [availabilityZone] The availability zone for this InterconnectLocation.
  /// [availableFeatures] A list of features available at this InterconnectLocation.
  /// [availableLinkTypes] A list of link types available at this InterconnectLocation.
  /// [city] The city for this location.
  /// [continent] The continent for this location.
  /// [description] A textual description of the resource.
  /// [facilityProvider] The name of the provider for this facility.
  /// [facilityProviderFacilityId] A provider-assigned Identifier for this facility.
  /// [name] Required.
  /// [peeringdbFacilityId] The PeeringDB facility ID for this facility.
  /// [selfLink] The URI of the created resource.
  /// [status] The status of this InterconnectLocation.
  /// [supportsPzs] Reserved for future use.
  GetInterconnectLocationsLocation({
    required this.address,
    required this.availabilityZone,
    required this.availableFeatures,
    required this.availableLinkTypes,
    required this.city,
    required this.continent,
    required this.description,
    required this.facilityProvider,
    required this.facilityProviderFacilityId,
    required this.name,
    required this.peeringdbFacilityId,
    required this.selfLink,
    required this.status,
    required this.supportsPzs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'availabilityZone': availabilityZone,
      'availableFeatures': availableFeatures,
      'availableLinkTypes': availableLinkTypes,
      'city': city,
      'continent': continent,
      'description': description,
      'facilityProvider': facilityProvider,
      'facilityProviderFacilityId': facilityProviderFacilityId,
      'name': name,
      'peeringdbFacilityId': peeringdbFacilityId,
      'selfLink': selfLink,
      'status': status,
      'supportsPzs': supportsPzs,
    };
  }

  factory GetInterconnectLocationsLocation.fromMap(Map<String, dynamic> map) {
    return GetInterconnectLocationsLocation(
      address: map['address'] as String,
      availabilityZone: map['availabilityZone'] as String,
      availableFeatures: (map['availableFeatures'] as List).cast<String>(),
      availableLinkTypes: (map['availableLinkTypes'] as List).cast<String>(),
      city: map['city'] as String,
      continent: map['continent'] as String,
      description: map['description'] as String,
      facilityProvider: map['facilityProvider'] as String,
      facilityProviderFacilityId: map['facilityProviderFacilityId'] as String,
      name: map['name'] as String,
      peeringdbFacilityId: map['peeringdbFacilityId'] as String,
      selfLink: map['selfLink'] as String,
      status: map['status'] as String,
      supportsPzs: map['supportsPzs'] as bool,
    );
  }
}
