// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_root_policy_type.dart';

class GetOrganizationRoot {
  /// ARN of the root.
  final pulumi.Input<String> arn;
  /// Identifier of the root.
  final pulumi.Input<String> id;
  /// Name of the policy type.
  final pulumi.Input<String> name;
  /// List of policy types enabled for this root. All elements have these attributes:
  final pulumi.Input<List<GetOrganizationRootPolicyType>> policyTypes;

  /// Creates a new [GetOrganizationRoot].
  /// [arn] ARN of the root.
  /// [id] Identifier of the root.
  /// [name] Name of the policy type.
  /// [policyTypes] List of policy types enabled for this root. All elements have these attributes:
  GetOrganizationRoot({
    required this.arn,
    required this.id,
    required this.name,
    required this.policyTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'id': id,
      'name': name,
      'policyTypes': pulumi.Input.mapInputValue<List<GetOrganizationRootPolicyType>, List<Map<String, dynamic>>>(policyTypes, (value) => pulumi.Input.encodeList<GetOrganizationRootPolicyType, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetOrganizationRoot.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRoot(
      arn: (map['arn'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      policyTypes: (pulumi.Input.decodeList<GetOrganizationRootPolicyType>(map['policyTypes']!, (value) => GetOrganizationRootPolicyType.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

