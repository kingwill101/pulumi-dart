// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_osconfig_v1beta_get_guest_policy_args_doc}
/// Arguments for getGuestPolicy.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1beta_get_guest_policy_args_doc}
class GetGuestPolicyArgs {
  final pulumi.Input<String> guestPolicyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGuestPolicyArgs].
  /// [guestPolicyId] Required.
  /// [project] Optional.
  GetGuestPolicyArgs({
    required String guestPolicyId,
    String? project,
  })  : guestPolicyId = pulumi.Input.asInput<String>(guestPolicyId),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      guestPolicyId: map['guestPolicyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
