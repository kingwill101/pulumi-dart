// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_v1beta2_get_managed_zone_iam_policy_dns_v1beta2_args_doc}
/// Arguments for getManagedZoneIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_get_managed_zone_iam_policy_dns_v1beta2_args_doc}
class GetManagedZoneIamPolicyDnsV1beta2Args {
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagedZoneIamPolicyDnsV1beta2Args].
  /// [managedZone] Required.
  /// [project] Optional.
  GetManagedZoneIamPolicyDnsV1beta2Args({
    required String managedZone,
    String? project,
  }) : managedZone = pulumi.Input.asInput<String>(managedZone),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'managedZone': managedZone, 'project': ?project};
  }

  factory GetManagedZoneIamPolicyDnsV1beta2Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagedZoneIamPolicyDnsV1beta2Args(
      managedZone: map['managedZone'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
