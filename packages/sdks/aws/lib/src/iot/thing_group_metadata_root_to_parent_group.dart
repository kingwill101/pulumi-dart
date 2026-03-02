// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThingGroupMetadataRootToParentGroup {
  final pulumi.Input<String>? groupArn;
  final pulumi.Input<String>? groupName;

  /// Creates a new [ThingGroupMetadataRootToParentGroup].
  /// [groupArn] Optional.
  /// [groupName] Optional.
  ThingGroupMetadataRootToParentGroup({
    this.groupArn,
    this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupArn': ?groupArn,
      'groupName': ?groupName,
    };
  }

  factory ThingGroupMetadataRootToParentGroup.fromMap(Map<String, dynamic> map) {
    return ThingGroupMetadataRootToParentGroup(
      groupArn: map['groupArn'] == null ? null : ((map['groupArn'] as String).input()).input(),
      groupName: map['groupName'] == null ? null : ((map['groupName'] as String).input()).input(),
    );
  }
}

