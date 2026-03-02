// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DefenseResourceGroup resources.
class DefenseResourceGroupState {
  /// The description of the protected object group.
  final pulumi.Input<String>? description;
  /// The name of the protected object group. The name must be 1 to 255 characters long and can contain Chinese characters, letters, digits, underscores (_), periods (.), and hyphens (-)
  final pulumi.Input<String>? groupName;
  /// The ID of the WAF instance.
  final pulumi.Input<String>? instanceId;
  /// The names of the protected objects that are added to the protected object group.
  final pulumi.Input<List<String>>? resourceLists;

  /// Creates a new [DefenseResourceGroupState].
  /// [description] The description of the protected object group.
  /// [groupName] The name of the protected object group. The name must be 1 to 255 characters long and can contain Chinese characters, letters, digits, underscores (_), periods (.), and hyphens (-)
  /// [instanceId] The ID of the WAF instance.
  /// [resourceLists] The names of the protected objects that are added to the protected object group.
  DefenseResourceGroupState({
    this.description,
    this.groupName,
    this.instanceId,
    this.resourceLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'groupName': ?groupName,
      'instanceId': ?instanceId,
      'resourceLists': ?resourceLists,
    };
  }

  factory DefenseResourceGroupState.fromMap(Map<String, dynamic> map) {
    return DefenseResourceGroupState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      groupName: map['groupName'] == null ? null : (map['groupName']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      resourceLists: map['resourceLists'] == null ? null : ((map['resourceLists']! as List).cast<String>()).input(),
    );
  }
}

