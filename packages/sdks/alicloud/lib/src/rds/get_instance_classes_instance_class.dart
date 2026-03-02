// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_classes_instance_class_storage_range.dart';
import 'get_instance_classes_instance_class_zone_id.dart';

class GetInstanceClassesInstanceClass {
  /// DB Instance available class.
  final pulumi.Input<String> instanceClass;
  /// Unit price of instance specifications.
  final pulumi.Input<String> price;
  /// DB Instance available storage range.
  final pulumi.Input<GetInstanceClassesInstanceClassStorageRange> storageRange;
  /// A list of Zone to launch the DB instance.
  final pulumi.Input<List<GetInstanceClassesInstanceClassZoneId>> zoneIds;

  /// Creates a new [GetInstanceClassesInstanceClass].
  /// [instanceClass] DB Instance available class.
  /// [price] Unit price of instance specifications.
  /// [storageRange] DB Instance available storage range.
  /// [zoneIds] A list of Zone to launch the DB instance.
  GetInstanceClassesInstanceClass({
    required this.instanceClass,
    required this.price,
    required this.storageRange,
    required this.zoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceClass': instanceClass,
      'price': price,
      'storageRange': pulumi.Input.mapInputValue<GetInstanceClassesInstanceClassStorageRange, Map<String, dynamic>>(storageRange, (value) => value.toMap()),
      'zoneIds': pulumi.Input.mapInputValue<List<GetInstanceClassesInstanceClassZoneId>, List<Map<String, dynamic>>>(zoneIds, (value) => pulumi.Input.encodeList<GetInstanceClassesInstanceClassZoneId, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceClassesInstanceClass.fromMap(Map<String, dynamic> map) {
    return GetInstanceClassesInstanceClass(
      instanceClass: (map['instanceClass'] as String).input(),
      price: (map['price'] as String).input(),
      storageRange: (GetInstanceClassesInstanceClassStorageRange.fromMap((map['storageRange'] as Map).cast<String, dynamic>())).input(),
      zoneIds: (pulumi.Input.decodeList<GetInstanceClassesInstanceClassZoneId>(map['zoneIds'], (value) => GetInstanceClassesInstanceClassZoneId.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

