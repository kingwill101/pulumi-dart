// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGuestPolicy.
class GetGuestPolicyArgs {
  final pulumi.Input<String> guestPolicyId;
  final pulumi.Input<String>? project;

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
      guestPolicyId: pulumi.Input.asInput<String>(map['guestPolicyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
