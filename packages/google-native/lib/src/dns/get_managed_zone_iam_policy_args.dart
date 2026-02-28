// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1_get_managed_zone_iam_policy_args_doc}
/// Arguments for getManagedZoneIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_get_managed_zone_iam_policy_args_doc}
class GetManagedZoneIamPolicyArgs {
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagedZoneIamPolicyArgs].
  /// [managedZone] Required.
  /// [project] Optional.
  GetManagedZoneIamPolicyArgs({
    required String managedZone,
    String? project,
  })  : managedZone = pulumi.Input.asInput<String>(managedZone),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['managedZone'] = managedZone;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetManagedZoneIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneIamPolicyArgs(
      managedZone: map['managedZone'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
