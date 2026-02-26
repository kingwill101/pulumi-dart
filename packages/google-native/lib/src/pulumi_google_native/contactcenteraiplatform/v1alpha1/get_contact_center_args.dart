// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getContactCenter.
class GetContactCenterArgs {
  final Input<String> contactCenterId;
  final Input<String> location;
  final Input<String>? project;

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
      contactCenterId: Input.asInput<String>(map['contactCenterId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
