// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of group resource.
class GroupProperties {
  /// The type of group.
  final pulumi.Input<String>? groupType;

  /// Creates a new [GroupProperties].
  /// [groupType] The type of group.
  GroupProperties({
    this.groupType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupType': ?groupType,
    };
  }

  factory GroupProperties.fromMap(Map<String, dynamic> map) {
    return GroupProperties(
      groupType: (() { final guardedValue = map['groupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

