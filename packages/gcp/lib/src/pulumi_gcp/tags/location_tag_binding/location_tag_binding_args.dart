// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LocationTagBinding.
class LocationTagBindingArgs {
  /// Location of the target resource.
  ///
  /// - - -
  final pulumi.Input<String>? location;

  /// The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  final pulumi.Input<String> parent;

  /// The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  final pulumi.Input<String> tagValue;

  LocationTagBindingArgs({
    this.location,
    required this.parent,
    required this.tagValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['parent'] = parent;
    map['tagValue'] = tagValue;
    return map;
  }

  factory LocationTagBindingArgs.fromMap(Map<String, dynamic> map) {
    return LocationTagBindingArgs(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      tagValue: pulumi.Input.asInput<String>(map['tagValue']),
    );
  }
}
