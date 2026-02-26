// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAddressGroup.
class GetAddressGroupResult {
  /// Capacity of the Address Group
  final int capacity;

  /// The timestamp when the resource was created.
  final String createTime;

  /// Optional. Free-text description of the resource.
  final String description;

  /// Optional. List of items.
  final List<String> items;

  /// Optional. Set of label tags associated with the AddressGroup resource.
  final Map<String, String> labels;

  /// Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`.
  final String name;

  /// Server-defined fully-qualified URL for this resource.
  final String selfLink;

  /// The type of the Address Group. Possible values are "IPv4" or "IPV6".
  final String type;

  /// The timestamp when the resource was updated.
  final String updateTime;

  GetAddressGroupResult({
    required this.capacity,
    required this.createTime,
    required this.description,
    required this.items,
    required this.labels,
    required this.name,
    required this.selfLink,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacity'] = capacity;
    map['createTime'] = createTime;
    map['description'] = description;
    map['items'] = items;
    map['labels'] = labels;
    map['name'] = name;
    map['selfLink'] = selfLink;
    map['type'] = type;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetAddressGroupResult.fromMap(Map<String, dynamic> map) {
    return GetAddressGroupResult(
      capacity: map['capacity'] as int,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      items: (map['items'] as List).cast<String>(),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      selfLink: map['selfLink'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
