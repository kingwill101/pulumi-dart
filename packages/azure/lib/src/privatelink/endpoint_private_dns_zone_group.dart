// ignore_for_file: unused_element, unnecessary_cast


class EndpointPrivateDnsZoneGroup {
  /// The ID of the Private DNS Zone Config.
  final String? id;
  /// Specifies the Name of the Private DNS Zone Group.
  final String name;
  /// Specifies the list of Private DNS Zones to include within the `private_dns_zone_group`.
  final List<String> privateDnsZoneIds;

  /// Creates a new [EndpointPrivateDnsZoneGroup].
  /// [id] The ID of the Private DNS Zone Config.
  /// [name] Specifies the Name of the Private DNS Zone Group.
  /// [privateDnsZoneIds] Specifies the list of Private DNS Zones to include within the `private_dns_zone_group`.
  EndpointPrivateDnsZoneGroup({
    this.id,
    required this.name,
    required this.privateDnsZoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'privateDnsZoneIds': privateDnsZoneIds,
    };
  }

  factory EndpointPrivateDnsZoneGroup.fromMap(Map<String, dynamic> map) {
    return EndpointPrivateDnsZoneGroup(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      privateDnsZoneIds: (map['privateDnsZoneIds'] as List).cast<String>(),
    );
  }
}

