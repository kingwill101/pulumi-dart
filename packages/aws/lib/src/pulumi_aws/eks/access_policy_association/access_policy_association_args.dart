// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../access_policy_association_access_scope/access_policy_association_access_scope.dart';

/// The set of arguments for AccessPolicyAssociation.
class AccessPolicyAssociationArgs {
  /// The configuration block to determine the scope of the access. See <span pulumi-lang-nodejs="`accessScope`" pulumi-lang-dotnet="`AccessScope`" pulumi-lang-go="`accessScope`" pulumi-lang-python="`access_scope`" pulumi-lang-yaml="`accessScope`" pulumi-lang-java="`accessScope`">`access_scope`</span> Block below.
  final Input<AccessPolicyAssociationAccessScope> accessScope;

  /// Name of the EKS Cluster.
  final Input<String> clusterName;

  /// The ARN of the access policy that you're associating.
  final Input<String> policyArn;

  /// The IAM Principal ARN which requires Authentication access to the EKS cluster.
  final Input<String> principalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  AccessPolicyAssociationArgs({
    required this.accessScope,
    required this.clusterName,
    required this.policyArn,
    required this.principalArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessScope'] = Input.mapInputValue<AccessPolicyAssociationAccessScope,
        Map<String, dynamic>>(accessScope, (value) => value.toMap());
    map['clusterName'] = clusterName;
    map['policyArn'] = policyArn;
    map['principalArn'] = principalArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AccessPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssociationArgs(
      accessScope:
          Input.asInput<AccessPolicyAssociationAccessScope>(map['accessScope']),
      clusterName: Input.asInput<String>(map['clusterName']),
      policyArn: Input.asInput<String>(map['policyArn']),
      principalArn: Input.asInput<String>(map['principalArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
