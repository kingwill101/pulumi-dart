// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationSourceIamPolicy.
class GetOrganizationSourceIamPolicyArgs {
  final Input<String> organizationId;
  final Input<String> sourceId;

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
      organizationId: Input.asInput<String>(map['organizationId']),
      sourceId: Input.asInput<String>(map['sourceId']),
    );
  }
}
