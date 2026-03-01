// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypeFamiliesFamily {
  /// The generation of the instance type family, Valid values: `ecs-1`, `ecs-2`, `ecs-3`, `ecs-4`, `ecs-5`, `ecs-6`. For more information, see [Instance type families](https://www.alibabacloud.com/help/doc-detail/25378.htm).
  final String generation;
  /// ID of the instance type family.
  final String id;
  /// A list of Zone to launch the instance.
  final List<String> zoneIds;

  /// Creates a new [GetInstanceTypeFamiliesFamily].
  /// [generation] The generation of the instance type family, Valid values: `ecs-1`, `ecs-2`, `ecs-3`, `ecs-4`, `ecs-5`, `ecs-6`. For more information, see [Instance type families](https://www.alibabacloud.com/help/doc-detail/25378.htm).
  /// [id] ID of the instance type family.
  /// [zoneIds] A list of Zone to launch the instance.
  GetInstanceTypeFamiliesFamily({
    required this.generation,
    required this.id,
    required this.zoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': generation,
      'id': id,
      'zoneIds': zoneIds,
    };
  }

  factory GetInstanceTypeFamiliesFamily.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeFamiliesFamily(
      generation: map['generation'] as String,
      id: map['id'] as String,
      zoneIds: (map['zoneIds'] as List).cast<String>(),
    );
  }
}

