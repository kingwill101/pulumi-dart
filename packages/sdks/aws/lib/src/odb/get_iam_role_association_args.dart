// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_iam_role_association_get_iam_role_association_args_doc}
/// Arguments for getIamRoleAssociation.
/// {@endtemplate}
/// {@macro pulumi_odb_get_iam_role_association_get_iam_role_association_args_doc}
class GetIamRoleAssociationArgs {
  /// IAM role ARN to look up.
  final pulumi.Input<String> iamRoleArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Oracle Database@AWS resource ARN associated with the IAM role.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceArn;

  /// Creates a new [GetIamRoleAssociationArgs].
  /// [iamRoleArn] IAM role ARN to look up.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] Oracle Database@AWS resource ARN associated with the IAM role.
  const GetIamRoleAssociationArgs({
    required this.iamRoleArn,
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamRoleArn': iamRoleArn,
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory GetIamRoleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetIamRoleAssociationArgs(
      iamRoleArn: pulumi.Input.fromValue(map['iamRoleArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}
