// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_association_access_scope.dart';

/// Input properties used for looking up and filtering AccessPolicyAssociation resources.
class AccessPolicyAssociationState {
  /// The configuration block to determine the scope of the access. See `accessScope` Block below.
  final pulumi.Input<AccessPolicyAssociationAccessScope?>? accessScope;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was associated.
  final pulumi.Input<String?>? associatedAt;
  /// Name of the EKS Cluster.
  final pulumi.Input<String?>? clusterName;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was updated.
  final pulumi.Input<String?>? modifiedAt;
  /// The ARN of the access policy that you're associating.
  final pulumi.Input<String?>? policyArn;
  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  final pulumi.Input<String?>? principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AccessPolicyAssociationState].
  /// [accessScope] The configuration block to determine the scope of the access. See `accessScope` Block below.
  /// [associatedAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was associated.
  /// [clusterName] Name of the EKS Cluster.
  /// [modifiedAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was updated.
  /// [policyArn] The ARN of the access policy that you're associating.
  /// [principalArn] The IAM Principal ARN which requires Authentication access to the EKS cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AccessPolicyAssociationState({
    this.accessScope,
    this.associatedAt,
    this.clusterName,
    this.modifiedAt,
    this.policyArn,
    this.principalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessScope': ?pulumi.Input.mapOptionalInputValue<AccessPolicyAssociationAccessScope, Map<String, dynamic>>(accessScope, (value) => value.toMap()),
      'associatedAt': ?associatedAt,
      'clusterName': ?clusterName,
      'modifiedAt': ?modifiedAt,
      'policyArn': ?policyArn,
      'principalArn': ?principalArn,
      'region': ?region,
    };
  }

  factory AccessPolicyAssociationState.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssociationState(
      accessScope: (() { final guardedValue = map['accessScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicyAssociationAccessScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      associatedAt: (() { final guardedValue = map['associatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyArn: (() { final guardedValue = map['policyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalArn: (() { final guardedValue = map['principalArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
