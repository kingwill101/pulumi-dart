// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_organization_root_policy_type/get_organization_root_policy_type.dart';

class GetOrganizationRoot {
  /// ARN of the root.
  final String arn;

  /// Identifier of the root.
  final String id;

  /// Name of the policy type.
  final String name;

  /// List of policy types enabled for this root. All elements have these attributes:
  final List<GetOrganizationRootPolicyType> policyTypes;

  GetOrganizationRoot({
    required this.arn,
    required this.id,
    required this.name,
    required this.policyTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['name'] = name;
    map['policyTypes'] =
        Input.encodeList<GetOrganizationRootPolicyType, Map<String, dynamic>>(
            policyTypes, (value) => value.toMap());
    return map;
  }

  factory GetOrganizationRoot.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRoot(
      arn: map['arn'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      policyTypes: Input.decodeList<GetOrganizationRootPolicyType>(
          map['policyTypes'],
          (value) => GetOrganizationRootPolicyType.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
