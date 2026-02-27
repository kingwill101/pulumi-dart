// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getContactCenter.
class GetContactCenterArgs {
  final pulumi.Input<String> contactCenterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetContactCenterArgs({
    required this.contactCenterId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactCenterId'] = contactCenterId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetContactCenterArgs.fromMap(Map<String, dynamic> map) {
    return GetContactCenterArgs(
      contactCenterId: pulumi.Input.asInput<String>(map['contactCenterId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
