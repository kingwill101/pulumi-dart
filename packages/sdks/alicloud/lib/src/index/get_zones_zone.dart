// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesZone {
  /// Set of supported disk categories.
  final pulumi.Input<List<String>> availableDiskCategories;
  /// Allowed instance types.
  final pulumi.Input<List<String>> availableInstanceTypes;
  /// Filter the results by a specific resource type.
  /// Valid values: `Instance`, `Disk`, `VSwitch`, `Rds`, `KVStore`, `FunctionCompute`, `Elasticsearch`, `Slb`.
  ///
  /// > **NOTE:** From version 1.134.0, the `available_resource_creation` value "Rds" has been deprecated.
  /// If you want to fetch the available zones for RDS instance, you can use datasource alicloud_db_zones
  final pulumi.Input<List<String>> availableResourceCreations;
  /// ID of the zone.
  final pulumi.Input<String> id;
  /// Name of the zone in the local language.
  final pulumi.Input<String> localName;
  /// A list of zone ids in which the multi zone.
  final pulumi.Input<List<String>> multiZoneIds;
  /// A list of slb slave zone ids in which the slb master zone.
  final pulumi.Input<List<String>> slbSlaveZoneIds;

  /// Creates a new [GetZonesZone].
  /// [availableDiskCategories] Set of supported disk categories.
  /// [availableInstanceTypes] Allowed instance types.
  /// [availableResourceCreations] Filter the results by a specific resource type.
  /// [id] ID of the zone.
  /// [localName] Name of the zone in the local language.
  /// [multiZoneIds] A list of zone ids in which the multi zone.
  /// [slbSlaveZoneIds] A list of slb slave zone ids in which the slb master zone.
  GetZonesZone({
    required this.availableDiskCategories,
    required this.availableInstanceTypes,
    required this.availableResourceCreations,
    required this.id,
    required this.localName,
    required this.multiZoneIds,
    required this.slbSlaveZoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableDiskCategories': availableDiskCategories,
      'availableInstanceTypes': availableInstanceTypes,
      'availableResourceCreations': availableResourceCreations,
      'id': id,
      'localName': localName,
      'multiZoneIds': multiZoneIds,
      'slbSlaveZoneIds': slbSlaveZoneIds,
    };
  }

  factory GetZonesZone.fromMap(Map<String, dynamic> map) {
    return GetZonesZone(
      availableDiskCategories: ((map['availableDiskCategories'] as List).cast<String>()).input(),
      availableInstanceTypes: ((map['availableInstanceTypes'] as List).cast<String>()).input(),
      availableResourceCreations: ((map['availableResourceCreations'] as List).cast<String>()).input(),
      id: (map['id'] as String).input(),
      localName: (map['localName'] as String).input(),
      multiZoneIds: ((map['multiZoneIds'] as List).cast<String>()).input(),
      slbSlaveZoneIds: ((map['slbSlaveZoneIds'] as List).cast<String>()).input(),
    );
  }
}

