// ignore_for_file: unused_element, unnecessary_cast


/// Describes the user-defined constraints for resource hardware placement.
class PlacementResponse {
  /// This property supplements the 'zonePlacementPolicy' property. If 'zonePlacementPolicy' is set to 'Any'/'Auto', availability zone selected by the system must not be present in the list of availability zones passed with 'excludeZones'. If 'excludeZones' is not provided, all availability zones in region will be considered for selection.
  final List<String>? excludeZones;
  /// This property supplements the 'zonePlacementPolicy' property. If 'zonePlacementPolicy' is set to 'Any'/'Auto', availability zone selected by the system must be present in the list of availability zones passed with 'includeZones'. If 'includeZones' is not provided, all availability zones in region will be considered for selection.
  final List<String>? includeZones;
  /// Specifies the policy for resource's placement in availability zone. Possible values are: **Any** (used for Virtual Machines), **Auto** (used for Virtual Machine Scale Sets) - An availability zone will be automatically picked by system as part of resource creation.
  final String? zonePlacementPolicy;

  /// Creates a new [PlacementResponse].
  /// [excludeZones] This property supplements the 'zonePlacementPolicy' property. If 'zonePlacementPolicy' is set to 'Any'/'Auto', availability zone selected by the system must not be present in the list of availability zones passed with 'excludeZones'. If 'excludeZones' is not provided, all availability zones in region will be considered for selection.
  /// [includeZones] This property supplements the 'zonePlacementPolicy' property. If 'zonePlacementPolicy' is set to 'Any'/'Auto', availability zone selected by the system must be present in the list of availability zones passed with 'includeZones'. If 'includeZones' is not provided, all availability zones in region will be considered for selection.
  /// [zonePlacementPolicy] Specifies the policy for resource's placement in availability zone. Possible values are: **Any** (used for Virtual Machines), **Auto** (used for Virtual Machine Scale Sets) - An availability zone will be automatically picked by system as part of resource creation.
  PlacementResponse({
    this.excludeZones,
    this.includeZones,
    this.zonePlacementPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeZones': ?excludeZones,
      'includeZones': ?includeZones,
      'zonePlacementPolicy': ?zonePlacementPolicy,
    };
  }

  factory PlacementResponse.fromMap(Map<String, dynamic> map) {
    return PlacementResponse(
      excludeZones: map['excludeZones'] == null ? null : (map['excludeZones'] as List).cast<String>(),
      includeZones: map['includeZones'] == null ? null : (map['includeZones'] as List).cast<String>(),
      zonePlacementPolicy: map['zonePlacementPolicy'] == null ? null : map['zonePlacementPolicy'] as String,
    );
  }
}

