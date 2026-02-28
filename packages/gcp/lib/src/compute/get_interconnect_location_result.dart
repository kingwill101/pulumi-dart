// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getInterconnectLocation.
class GetInterconnectLocationResult {
  /// The postal address of the Point of Presence.
  final String address;

  /// The availability zone for this InterconnectLocation.
  final String availabilityZone;

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

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// The PeeringDB facility ID for this facility.
  final String peeringdbFacilityId;
  final String project;

  /// The URI of the created resource.
  final String selfLink;

  /// The status of this InterconnectLocation.
  final String status;

  /// Creates a new [GetInterconnectLocationResult].
  /// [address] The postal address of the Point of Presence.
  /// [availabilityZone] The availability zone for this InterconnectLocation.
  /// [city] The city for this location.
  /// [continent] The continent for this location.
  /// [description] A textual description of the resource.
  /// [facilityProvider] The name of the provider for this facility.
  /// [facilityProviderFacilityId] A provider-assigned Identifier for this facility.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [peeringdbFacilityId] The PeeringDB facility ID for this facility.
  /// [project] Required.
  /// [selfLink] The URI of the created resource.
  /// [status] The status of this InterconnectLocation.
  GetInterconnectLocationResult({
    required this.address,
    required this.availabilityZone,
    required this.city,
    required this.continent,
    required this.description,
    required this.facilityProvider,
    required this.facilityProviderFacilityId,
    required this.id,
    required this.name,
    required this.peeringdbFacilityId,
    required this.project,
    required this.selfLink,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['availabilityZone'] = availabilityZone;
    map['city'] = city;
    map['continent'] = continent;
    map['description'] = description;
    map['facilityProvider'] = facilityProvider;
    map['facilityProviderFacilityId'] = facilityProviderFacilityId;
    map['id'] = id;
    map['name'] = name;
    map['peeringdbFacilityId'] = peeringdbFacilityId;
    map['project'] = project;
    map['selfLink'] = selfLink;
    map['status'] = status;
    return map;
  }

  factory GetInterconnectLocationResult.fromMap(Map<String, dynamic> map) {
    return GetInterconnectLocationResult(
      address: map['address'] as String,
      availabilityZone: map['availabilityZone'] as String,
      city: map['city'] as String,
      continent: map['continent'] as String,
      description: map['description'] as String,
      facilityProvider: map['facilityProvider'] as String,
      facilityProviderFacilityId: map['facilityProviderFacilityId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      peeringdbFacilityId: map['peeringdbFacilityId'] as String,
      project: map['project'] as String,
      selfLink: map['selfLink'] as String,
      status: map['status'] as String,
    );
  }
}
