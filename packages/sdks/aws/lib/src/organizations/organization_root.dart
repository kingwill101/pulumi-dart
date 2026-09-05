// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_root_policy_type.dart';

class OrganizationRoot {
  /// ARN of the root.
  final pulumi.Input<String?>? arn;
  /// Identifier of the root.
  final pulumi.Input<String?>? id;
  /// Name of the policy type.
  final pulumi.Input<String?>? name;
  /// List of policy types enabled for this root. All elements have these attributes:
  final pulumi.Input<List<OrganizationRootPolicyType>?>? policyTypes;

  /// Creates a new [OrganizationRoot].
  /// [arn] ARN of the root.
  /// [id] Identifier of the root.
  /// [name] Name of the policy type.
  /// [policyTypes] List of policy types enabled for this root. All elements have these attributes:
  const OrganizationRoot({
    this.arn,
    this.id,
    this.name,
    this.policyTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
      'policyTypes': ?pulumi.Input.mapOptionalInputValue<List<OrganizationRootPolicyType>, List<Map<String, dynamic>>>(policyTypes, (value) => pulumi.Input.encodeList<OrganizationRootPolicyType, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OrganizationRoot.fromMap(Map<String, dynamic> map) {
    return OrganizationRoot(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyTypes: (() { final guardedValue = map['policyTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationRootPolicyType>(guardedValue, (value) => OrganizationRootPolicyType.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
