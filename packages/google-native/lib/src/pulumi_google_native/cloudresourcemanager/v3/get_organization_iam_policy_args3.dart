// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationIamPolicy.
class GetOrganizationIamPolicyArgs3 {
  final Input<String> organizationId;

  GetOrganizationIamPolicyArgs3({
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationIamPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return GetOrganizationIamPolicyArgs3(
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
