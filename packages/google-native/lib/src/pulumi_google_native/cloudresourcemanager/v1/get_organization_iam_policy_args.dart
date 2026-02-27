// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationIamPolicy.
class GetOrganizationIamPolicyArgs {
  final pulumi.Input<String> organizationId;

  GetOrganizationIamPolicyArgs({
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationIamPolicyArgs(
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
