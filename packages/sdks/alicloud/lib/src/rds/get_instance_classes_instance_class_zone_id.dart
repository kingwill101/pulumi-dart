// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceClassesInstanceClassZoneId {
  /// The Zone to launch the DB instance
  final pulumi.Input<String> id;
  /// A list of sub zone ids which in the id - e.g If `id` is `cn-beijing-MAZ5(a,b)`, `sub_zone_ids` will be `["cn-beijing-a", "cn-beijing-b"]`.
  final pulumi.Input<List<String>> subZoneIds;

  /// Creates a new [GetInstanceClassesInstanceClassZoneId].
  /// [id] The Zone to launch the DB instance
  /// [subZoneIds] A list of sub zone ids which in the id - e.g If `id` is `cn-beijing-MAZ5(a,b)`, `sub_zone_ids` will be `["cn-beijing-a", "cn-beijing-b"]`.
  GetInstanceClassesInstanceClassZoneId({
    required this.id,
    required this.subZoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'subZoneIds': subZoneIds,
    };
  }

  factory GetInstanceClassesInstanceClassZoneId.fromMap(Map<String, dynamic> map) {
    return GetInstanceClassesInstanceClassZoneId(
      id: pulumi.Input.fromValue(map['id'] as String),
      subZoneIds: pulumi.Input.fromValue((map['subZoneIds'] as List).cast<String>()),
    );
  }
}

