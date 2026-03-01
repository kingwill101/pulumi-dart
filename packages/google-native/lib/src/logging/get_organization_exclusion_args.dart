// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_organization_exclusion_args_doc}
/// Arguments for getOrganizationExclusion.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_organization_exclusion_args_doc}
class GetOrganizationExclusionArgs {
  final pulumi.Input<String> exclusionId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationExclusionArgs].
  /// [exclusionId] Required.
  /// [organizationId] Required.
  GetOrganizationExclusionArgs({
    required String exclusionId,
    required String organizationId,
  }) : exclusionId = pulumi.Input.asInput<String>(exclusionId),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionId': exclusionId,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationExclusionArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationExclusionArgs(
      exclusionId: map['exclusionId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
