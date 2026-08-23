// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the user-defined constraints for resource hardware placement.
class Placement {
  /// This property supplements the 'zonePlacementPolicy' property. If 'zonePlacementPolicy' is set to 'Any'/'Auto', availability zone selected by the system must not be present in the list of availability zones passed with 'excludeZones'. If 'excludeZones' is not provided, all availability zones in region will be considered for selection.
  final pulumi.Input<List<String>>? excludeZones;
  /// This property supplements the 'zonePlacementPolicy' property. If 'zonePlacementPolicy' is set to 'Any'/'Auto', availability zone selected by the system must be present in the list of availability zones passed with 'includeZones'. If 'includeZones' is not provided, all availability zones in region will be considered for selection.
  final pulumi.Input<List<String>>? includeZones;
  /// Specifies the policy for resource's placement in availability zone. Possible values are: **Any** (used for Virtual Machines), **Auto** (used for Virtual Machine Scale Sets) - An availability zone will be automatically picked by system as part of resource creation.
  final pulumi.Input<String>? zonePlacementPolicy;

  /// Creates a new [Placement].
  /// [excludeZones] This property supplements the 'zonePlacementPolicy' property. If 'zonePlacementPolicy' is set to 'Any'/'Auto', availability zone selected by the system must not be present in the list of availability zones passed with 'excludeZones'. If 'excludeZones' is not provided, all availability zones in region will be considered for selection.
  /// [includeZones] This property supplements the 'zonePlacementPolicy' property. If 'zonePlacementPolicy' is set to 'Any'/'Auto', availability zone selected by the system must be present in the list of availability zones passed with 'includeZones'. If 'includeZones' is not provided, all availability zones in region will be considered for selection.
  /// [zonePlacementPolicy] Specifies the policy for resource's placement in availability zone. Possible values are: **Any** (used for Virtual Machines), **Auto** (used for Virtual Machine Scale Sets) - An availability zone will be automatically picked by system as part of resource creation.
  const Placement({
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

  factory Placement.fromMap(Map<String, dynamic> map) {
    return Placement(
      excludeZones: (() { final guardedValue = map['excludeZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeZones: (() { final guardedValue = map['includeZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zonePlacementPolicy: (() { final guardedValue = map['zonePlacementPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
