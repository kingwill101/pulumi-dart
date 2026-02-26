// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationIamPolicy.
class GetOrganizationIamPolicyArgs {
  final Input<String> organizationId;

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
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
