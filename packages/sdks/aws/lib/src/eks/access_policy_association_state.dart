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
    pulumi.Output<AccessPolicyAssociationAccessScope>? accessScope,
    pulumi.Output<String>? associatedAt,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? modifiedAt,
    pulumi.Output<String>? policyArn,
    pulumi.Output<String>? principalArn,
    pulumi.Output<String>? region,
  }) :
      accessScope = pulumi.Input.asOptionalInput<AccessPolicyAssociationAccessScope>(accessScope),
      associatedAt = pulumi.Input.asOptionalInput<String>(associatedAt),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      modifiedAt = pulumi.Input.asOptionalInput<String>(modifiedAt),
      policyArn = pulumi.Input.asOptionalInput<String>(policyArn),
      principalArn = pulumi.Input.asOptionalInput<String>(principalArn),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      accessScope: map['accessScope'] == null ? null : pulumi.Output.create<AccessPolicyAssociationAccessScope>(AccessPolicyAssociationAccessScope.fromMap((map['accessScope'] as Map).cast<String, dynamic>())),
      associatedAt: map['associatedAt'] == null ? null : pulumi.Output.create<String>(map['associatedAt'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      modifiedAt: map['modifiedAt'] == null ? null : pulumi.Output.create<String>(map['modifiedAt'] as String),
      policyArn: map['policyArn'] == null ? null : pulumi.Output.create<String>(map['policyArn'] as String),
      principalArn: map['principalArn'] == null ? null : pulumi.Output.create<String>(map['principalArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

