// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationSourceIamPolicy.
class GetOrganizationSourceIamPolicyArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sourceId;

  GetOrganizationSourceIamPolicyArgs({
    required this.organizationId,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['sourceId'] = sourceId;
    return map;
  }

  factory GetOrganizationSourceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSourceIamPolicyArgs(
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      sourceId: pulumi.Input.asInput<String>(map['sourceId']),
    );
  }
}
