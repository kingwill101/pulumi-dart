// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationRootPolicyType {
  /// Status of the policy type as it relates to the associated root.
  final pulumi.Input<String>? status;
  final pulumi.Input<String>? type;

  /// Creates a new [OrganizationRootPolicyType].
  /// [status] Status of the policy type as it relates to the associated root.
  /// [type] Optional.
  OrganizationRootPolicyType({
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'type': ?type,
    };
  }

  factory OrganizationRootPolicyType.fromMap(Map<String, dynamic> map) {
    return OrganizationRootPolicyType(
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

