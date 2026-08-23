// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationRootPolicyType {
  /// Status of the policy type as it relates to the associated root.
  final pulumi.Input<String> status;
  final pulumi.Input<String> type;

  /// Creates a new [GetOrganizationRootPolicyType].
  /// [status] Status of the policy type as it relates to the associated root.
  /// [type] Required.
  const GetOrganizationRootPolicyType({
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'type': type,
    };
  }

  factory GetOrganizationRootPolicyType.fromMap(Map<String, dynamic> map) {
    return GetOrganizationRootPolicyType(
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
