// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for PolicyTag.
class PolicyTagArgs2 {
  /// Description of this policy tag. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description. If not set, defaults to an empty description.
  final Input<String>? description;

  /// User defined name of this policy tag. It must: be unique within the parent taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.
  final Input<String> displayName;
  final Input<String>? location;

  /// Resource name of this policy tag's parent policy tag (e.g. for the "LatLong" policy tag in the example above, this field contains the resource name of the "Geolocation" policy tag). If empty, it means this policy tag is a top level policy tag (e.g. this field is empty for the "Geolocation" policy tag in the example above). If not set, defaults to an empty string.
  final Input<String>? parentPolicyTag;
  final Input<String>? project;
  final Input<String> taxonomyId;

  PolicyTagArgs2({
    this.description,
    required this.displayName,
    this.location,
    this.parentPolicyTag,
    this.project,
    required this.taxonomyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final parentPolicyTagValue = parentPolicyTag;
    if (parentPolicyTagValue != null) {
      map['parentPolicyTag'] = parentPolicyTagValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['taxonomyId'] = taxonomyId;
    return map;
  }

  factory PolicyTagArgs2.fromMap(Map<String, dynamic> map) {
    return PolicyTagArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      location: Input.asOptionalInput<String>(map['location']),
      parentPolicyTag: Input.asOptionalInput<String>(map['parentPolicyTag']),
      project: Input.asOptionalInput<String>(map['project']),
      taxonomyId: Input.asInput<String>(map['taxonomyId']),
    );
  }
}
