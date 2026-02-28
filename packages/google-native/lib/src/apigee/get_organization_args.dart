// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_organization_args_doc}
/// Arguments for getOrganization.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_organization_args_doc}
class GetOrganizationArgs {
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationArgs].
  /// [organizationId] Required.
  GetOrganizationArgs({
    required String organizationId,
  }) : organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationArgs(
      organizationId: map['organizationId'] as String,
    );
  }
}
