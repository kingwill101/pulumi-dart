// ignore_for_file: unused_element, unnecessary_cast


class GetPlacementGroupsPlacementGroup {
  final int id;
  final Map<String, String> labels;
  final String name;
  final List<int> servers;
  final String type;

  /// Creates a new [GetPlacementGroupsPlacementGroup].
  /// [id] Required.
  /// [labels] Required.
  /// [name] Required.
  /// [servers] Required.
  /// [type] Required.
  GetPlacementGroupsPlacementGroup({
    required this.id,
    required this.labels,
    required this.name,
    required this.servers,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'labels': labels,
      'name': name,
      'servers': servers,
      'type': type,
    };
  }

  factory GetPlacementGroupsPlacementGroup.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupsPlacementGroup(
      id: map['id'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      servers: (map['servers'] as List).cast<int>(),
      type: map['type'] as String,
    );
  }
}

