// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Tag.
class TagOrganizationsArgs {
  /// Tag name.
  final pulumi.Input<String> key;

  /// Id of the Organizations resource to tag.
  final pulumi.Input<String> resourceId;

  /// Tag value.
  final pulumi.Input<String> value;

  TagOrganizationsArgs({
    required this.key,
    required this.resourceId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['resourceId'] = resourceId;
    map['value'] = value;
    return map;
  }

  factory TagOrganizationsArgs.fromMap(Map<String, dynamic> map) {
    return TagOrganizationsArgs(
      key: pulumi.Input.asInput<String>(map['key']),
      resourceId: pulumi.Input.asInput<String>(map['resourceId']),
      value: pulumi.Input.asInput<String>(map['value']),
    );
  }
}
