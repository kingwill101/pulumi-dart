// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBinding.
class GetBindingArgs3 {
  final Input<String> bindingId;
  final Input<String> location;
  final Input<String> membershipId;
  final Input<String>? project;

  GetBindingArgs3({
    required this.bindingId,
    required this.location,
    required this.membershipId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bindingId'] = bindingId;
    map['location'] = location;
    map['membershipId'] = membershipId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBindingArgs3.fromMap(Map<String, dynamic> map) {
    return GetBindingArgs3(
      bindingId: Input.asInput<String>(map['bindingId']),
      location: Input.asInput<String>(map['location']),
      membershipId: Input.asInput<String>(map['membershipId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
