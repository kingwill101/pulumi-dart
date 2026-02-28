// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_root_policy_type.dart';

class OrganizationRoot {
  /// ARN of the root.
  final String? arn;

  /// Identifier of the root.
  final String? id;

  /// Name of the policy type.
  final String? name;

  /// List of policy types enabled for this root. All elements have these attributes:
  final List<OrganizationRootPolicyType>? policyTypes;

  /// Creates a new [OrganizationRoot].
  /// [arn] ARN of the root.
  /// [id] Identifier of the root.
  /// [name] Name of the policy type.
  /// [policyTypes] List of policy types enabled for this root. All elements have these attributes:
  OrganizationRoot({
    this.arn,
    this.id,
    this.name,
    this.policyTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final policyTypesValue = policyTypes;
    if (policyTypesValue != null) {
      map['policyTypes'] = pulumi.Input.encodeList<OrganizationRootPolicyType,
          Map<String, dynamic>>(policyTypesValue, (value) => value.toMap());
    }
    return map;
  }

  factory OrganizationRoot.fromMap(Map<String, dynamic> map) {
    return OrganizationRoot(
      arn: map['arn'] == null ? null : map['arn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      policyTypes: map['policyTypes'] == null
          ? null
          : pulumi.Input.decodeList<OrganizationRootPolicyType>(
              map['policyTypes'],
              (value) => OrganizationRootPolicyType.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
