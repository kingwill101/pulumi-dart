// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_association_access_scope.dart';

/// Input properties used for looking up and filtering AccessPolicyAssociation resources.
class AccessPolicyAssociationState {
  /// The configuration block to determine the scope of the access. See `access_scope` Block below.
  final pulumi.Input<AccessPolicyAssociationAccessScope>? accessScope;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was associated.
  final pulumi.Input<String>? associatedAt;
  /// Name of the EKS Cluster.
  final pulumi.Input<String>? clusterName;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was updated.
  final pulumi.Input<String>? modifiedAt;
  /// The ARN of the access policy that you're associating.
  final pulumi.Input<String>? policyArn;
  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  final pulumi.Input<String>? principalArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AccessPolicyAssociationState].
  /// [accessScope] The configuration block to determine the scope of the access. See `access_scope` Block below.
  /// [associatedAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was associated.
  /// [clusterName] Name of the EKS Cluster.
  /// [modifiedAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the policy was updated.
  /// [policyArn] The ARN of the access policy that you're associating.
  /// [principalArn] The IAM Principal ARN which requires Authentication access to the EKS cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AccessPolicyAssociationState({
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
      accessScope: map['accessScope'] == null ? null : ((AccessPolicyAssociationAccessScope.fromMap((map['accessScope']! as Map).cast<String, dynamic>())).input()).input(),
      associatedAt: map['associatedAt'] == null ? null : ((map['associatedAt'] as String).input()).input(),
      clusterName: map['clusterName'] == null ? null : ((map['clusterName'] as String).input()).input(),
      modifiedAt: map['modifiedAt'] == null ? null : ((map['modifiedAt'] as String).input()).input(),
      policyArn: map['policyArn'] == null ? null : ((map['policyArn'] as String).input()).input(),
      principalArn: map['principalArn'] == null ? null : ((map['principalArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

