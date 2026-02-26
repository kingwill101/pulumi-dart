// ignore_for_file: unused_element, unnecessary_cast

class ResourceSetResourceSet {
  /// Description of the resource set.
  final String? description;

  /// Unique identifier for the resource set. It's returned in the responses to create and list commands. You provide it to operations like update and delete.
  final String? id;

  /// Last time that the reosurce set was changed.
  final String? lastUpdateTime;

  /// Descriptive name of the resource set. You can't change the name of a resource set after you create it.
  final String name;

  /// Indicates whether the resource set is in or out of the admin's Region scope. Valid values are `ACTIVE` (Admin can manage and delete the resource set) or `OUT_OF_ADMIN_SCOPE` (Admin can view the resource set, but they can't edit or delete the resource set.)
  final String? resourceSetStatus;

  /// Determines the resources that can be associated to the resource set. Depending on your setting for max results and the number of resource sets, a single call might not return the full list.
  final List<String>? resourceTypeLists;
  final String? updateToken;

  ResourceSetResourceSet({
    this.description,
    this.id,
    this.lastUpdateTime,
    required this.name,
    this.resourceSetStatus,
    this.resourceTypeLists,
    this.updateToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final lastUpdateTimeValue = lastUpdateTime;
    if (lastUpdateTimeValue != null) {
      map['lastUpdateTime'] = lastUpdateTimeValue;
    }
    map['name'] = name;
    final resourceSetStatusValue = resourceSetStatus;
    if (resourceSetStatusValue != null) {
      map['resourceSetStatus'] = resourceSetStatusValue;
    }
    final resourceTypeListsValue = resourceTypeLists;
    if (resourceTypeListsValue != null) {
      map['resourceTypeLists'] = resourceTypeListsValue;
    }
    final updateTokenValue = updateToken;
    if (updateTokenValue != null) {
      map['updateToken'] = updateTokenValue;
    }
    return map;
  }

  factory ResourceSetResourceSet.fromMap(Map<String, dynamic> map) {
    return ResourceSetResourceSet(
      description:
          map['description'] == null ? null : map['description'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      lastUpdateTime: map['lastUpdateTime'] == null
          ? null
          : map['lastUpdateTime'] as String,
      name: map['name'] as String,
      resourceSetStatus: map['resourceSetStatus'] == null
          ? null
          : map['resourceSetStatus'] as String,
      resourceTypeLists: map['resourceTypeLists'] == null
          ? null
          : (map['resourceTypeLists'] as List).cast<String>(),
      updateToken:
          map['updateToken'] == null ? null : map['updateToken'] as String,
    );
  }
}
