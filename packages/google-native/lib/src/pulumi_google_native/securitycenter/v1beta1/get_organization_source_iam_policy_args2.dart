// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationSourceIamPolicy.
class GetOrganizationSourceIamPolicyArgs2 {
  final Input<String> organizationId;
  final Input<String> sourceId;

  GetOrganizationSourceIamPolicyArgs2({
    required this.organizationId,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['sourceId'] = sourceId;
    return map;
  }

  factory GetOrganizationSourceIamPolicyArgs2.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationSourceIamPolicyArgs2(
      organizationId: Input.asInput<String>(map['organizationId']),
      sourceId: Input.asInput<String>(map['sourceId']),
    );
  }
}
