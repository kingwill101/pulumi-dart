// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThingGroupMetadataRootToParentGroup {
  final pulumi.Input<String>? groupArn;
  final pulumi.Input<String>? groupName;

  /// Creates a new [ThingGroupMetadataRootToParentGroup].
  /// [groupArn] Optional.
  /// [groupName] Optional.
  const ThingGroupMetadataRootToParentGroup({
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
      groupArn: (() { final guardedValue = map['groupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

