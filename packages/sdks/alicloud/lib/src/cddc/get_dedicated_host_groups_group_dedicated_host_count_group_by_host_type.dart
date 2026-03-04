// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType {
  final pulumi.Input<String> placeHolder;

  /// Creates a new [GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType].
  /// [placeHolder] Required.
  GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType({
    required this.placeHolder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'placeHolder': placeHolder};
  }

  factory GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDedicatedHostGroupsGroupDedicatedHostCountGroupByHostType(
      placeHolder: pulumi.Input.fromValue(map['placeHolder'] as String),
    );
  }
}
