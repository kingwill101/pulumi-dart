// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_association_access_scope.dart';

/// {@template pulumi_eks_access_policy_association_access_policy_association_args_doc}
/// The set of arguments for AccessPolicyAssociation.
/// {@endtemplate}
/// {@macro pulumi_eks_access_policy_association_access_policy_association_args_doc}
class AccessPolicyAssociationArgs {
  /// The configuration block to determine the scope of the access. See `access_scope` Block below.
  final pulumi.Input<AccessPolicyAssociationAccessScope> accessScope;

  /// Name of the EKS Cluster.
  final pulumi.Input<String> clusterName;

  /// The ARN of the access policy that you're associating.
  final pulumi.Input<String> policyArn;

  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  final pulumi.Input<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AccessPolicyAssociationArgs].
  /// [accessScope] The configuration block to determine the scope of the access. See `access_scope` Block below.
  /// [clusterName] Name of the EKS Cluster.
  /// [policyArn] The ARN of the access policy that you're associating.
  /// [principalArn] The IAM Principal ARN which requires Authentication access to the EKS cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AccessPolicyAssociationArgs({
    required this.accessScope,
    required this.clusterName,
    required this.policyArn,
    required this.principalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessScope':
          pulumi.Input.mapInputValue<
            AccessPolicyAssociationAccessScope,
            Map<String, dynamic>
          >(accessScope, (value) => value.toMap()),
      'clusterName': clusterName,
      'policyArn': policyArn,
      'principalArn': principalArn,
      'region': ?region,
    };
  }

  factory AccessPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssociationArgs(
      accessScope: pulumi.Input.fromValue(
        AccessPolicyAssociationAccessScope.fromMap(
          (map['accessScope']! as Map).cast<String, dynamic>(),
        ),
      ),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      policyArn: pulumi.Input.fromValue(map['policyArn'] as String),
      principalArn: pulumi.Input.fromValue(map['principalArn'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
