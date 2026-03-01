// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceEnginesInstanceEngineZoneId {
  /// The Zone to launch the DB instance
  final String id;
  /// A list of sub zone ids which in the id - e.g If `id` is `cn-beijing-MAZ5(a,b)`, `sub_zone_ids` will be `["cn-beijing-a", "cn-beijing-b"]`.
  final List<String> subZoneIds;

  /// Creates a new [GetInstanceEnginesInstanceEngineZoneId].
  /// [id] The Zone to launch the DB instance
  /// [subZoneIds] A list of sub zone ids which in the id - e.g If `id` is `cn-beijing-MAZ5(a,b)`, `sub_zone_ids` will be `["cn-beijing-a", "cn-beijing-b"]`.
  GetInstanceEnginesInstanceEngineZoneId({
    required this.id,
    required this.subZoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'subZoneIds': subZoneIds,
    };
  }

  factory GetInstanceEnginesInstanceEngineZoneId.fromMap(Map<String, dynamic> map) {
    return GetInstanceEnginesInstanceEngineZoneId(
      id: map['id'] as String,
      subZoneIds: (map['subZoneIds'] as List).cast<String>(),
    );
  }
}

