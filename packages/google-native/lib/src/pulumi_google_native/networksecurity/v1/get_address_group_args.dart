// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAddressGroup.
class GetAddressGroupArgs {
  final Input<String> addressGroupId;
  final Input<String> location;
  final Input<String>? project;

  GetAddressGroupArgs({
    required this.addressGroupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressGroupId'] = addressGroupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAddressGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressGroupArgs(
      addressGroupId: Input.asInput<String>(map['addressGroupId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
