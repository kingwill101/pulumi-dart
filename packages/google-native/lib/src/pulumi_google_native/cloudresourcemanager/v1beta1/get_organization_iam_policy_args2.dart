// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationIamPolicy.
class GetOrganizationIamPolicyArgs2 {
  final Input<String> organizationId;

  GetOrganizationIamPolicyArgs2({
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetOrganizationIamPolicyArgs2(
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
