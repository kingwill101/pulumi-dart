// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceSetResourceSet {
  /// Description of the resource set.
  final pulumi.Input<String>? description;
  /// Unique identifier for the resource set. It's returned in the responses to create and list commands. You provide it to operations like update and delete.
  final pulumi.Input<String>? id;
  /// Last time that the reosurce set was changed.
  final pulumi.Input<String>? lastUpdateTime;
  /// Descriptive name of the resource set. You can't change the name of a resource set after you create it.
  final pulumi.Input<String> name;
  /// Indicates whether the resource set is in or out of the admin's Region scope. Valid values are `ACTIVE` (Admin can manage and delete the resource set) or `OUT_OF_ADMIN_SCOPE` (Admin can view the resource set, but they can't edit or delete the resource set.)
  final pulumi.Input<String>? resourceSetStatus;
  /// Determines the resources that can be associated to the resource set. Depending on your setting for max results and the number of resource sets, a single call might not return the full list.
  final pulumi.Input<List<String>>? resourceTypeLists;
  final pulumi.Input<String>? updateToken;

  /// Creates a new [ResourceSetResourceSet].
  /// [description] Description of the resource set.
  /// [id] Unique identifier for the resource set. It's returned in the responses to create and list commands. You provide it to operations like update and delete.
  /// [lastUpdateTime] Last time that the reosurce set was changed.
  /// [name] Descriptive name of the resource set. You can't change the name of a resource set after you create it.
  /// [resourceSetStatus] Indicates whether the resource set is in or out of the admin's Region scope. Valid values are `ACTIVE` (Admin can manage and delete the resource set) or `OUT_OF_ADMIN_SCOPE` (Admin can view the resource set, but they can't edit or delete the resource set.)
  /// [resourceTypeLists] Determines the resources that can be associated to the resource set. Depending on your setting for max results and the number of resource sets, a single call might not return the full list.
  /// [updateToken] Optional.
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
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'lastUpdateTime': ?lastUpdateTime,
      'name': name,
      'resourceSetStatus': ?resourceSetStatus,
      'resourceTypeLists': ?resourceTypeLists,
      'updateToken': ?updateToken,
    };
  }

  factory ResourceSetResourceSet.fromMap(Map<String, dynamic> map) {
    return ResourceSetResourceSet(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      lastUpdateTime: map['lastUpdateTime'] == null ? null : (map['lastUpdateTime'] as String).input(),
      name: (map['name'] as String).input(),
      resourceSetStatus: map['resourceSetStatus'] == null ? null : (map['resourceSetStatus'] as String).input(),
      resourceTypeLists: map['resourceTypeLists'] == null ? null : ((map['resourceTypeLists'] as List).cast<String>()).input(),
      updateToken: map['updateToken'] == null ? null : (map['updateToken'] as String).input(),
    );
  }
}

