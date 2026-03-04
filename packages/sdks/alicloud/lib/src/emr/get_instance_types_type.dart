// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypesType {
  /// The ID of the instance type.
  final pulumi.Input<String> id;

  /// Local capacity of the applied ecs instance for emr cluster. Unit: GB.
  final pulumi.Input<int> localStorageCapacity;

  /// The supported resources of specific zoneId.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetInstanceTypesType].
  /// [id] The ID of the instance type.
  /// [localStorageCapacity] Local capacity of the applied ecs instance for emr cluster. Unit: GB.
  /// [zoneId] The supported resources of specific zoneId.
  GetInstanceTypesType({
    required this.id,
    required this.localStorageCapacity,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'localStorageCapacity': localStorageCapacity,
      'zoneId': zoneId,
    };
  }

  factory GetInstanceTypesType.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesType(
      id: pulumi.Input.fromValue(map['id'] as String),
      localStorageCapacity: pulumi.Input.fromValue(
        map['localStorageCapacity'] as int,
      ),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
