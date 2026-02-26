// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGuestPolicy.
class GetGuestPolicyArgs {
  final Input<String> guestPolicyId;
  final Input<String>? project;

  GetGuestPolicyArgs({
    required this.guestPolicyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['guestPolicyId'] = guestPolicyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGuestPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestPolicyArgs(
      guestPolicyId: Input.asInput<String>(map['guestPolicyId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
