// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_role_association_timeouts.dart';

/// {@template pulumi_odb_iam_role_association_iam_role_association_args_doc}
/// The set of arguments for IamRoleAssociation.
/// {@endtemplate}
/// {@macro pulumi_odb_iam_role_association_iam_role_association_args_doc}
class IamRoleAssociationArgs {
  /// AWS integration configuration for the IAM role association. Valid value: `KmsTde`.
  final pulumi.Input<String> awsIntegration;
  /// IAM role ARN to associate.
  final pulumi.Input<String> iamRoleArn;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Oracle Database@AWS resource ARN to associate the IAM role with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceArn;
  final pulumi.Input<IamRoleAssociationTimeouts?>? timeouts;

  /// Creates a new [IamRoleAssociationArgs].
  /// [awsIntegration] AWS integration configuration for the IAM role association. Valid value: `KmsTde`.
  /// [iamRoleArn] IAM role ARN to associate.
  /// [region] Region where this resource is managed. Defaults to the Region set in the provider configuration.
  /// [resourceArn] Oracle Database@AWS resource ARN to associate the IAM role with.
  /// [timeouts] Optional.
  const IamRoleAssociationArgs({
    required this.awsIntegration,
    required this.iamRoleArn,
    this.region,
    required this.resourceArn,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsIntegration': awsIntegration,
      'iamRoleArn': iamRoleArn,
      'region': ?region,
      'resourceArn': resourceArn,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<IamRoleAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory IamRoleAssociationArgs.fromMap(Map<String, dynamic> map) {
    return IamRoleAssociationArgs(
      awsIntegration: pulumi.Input.fromValue(map['awsIntegration'] as String),
      iamRoleArn: pulumi.Input.fromValue(map['iamRoleArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IamRoleAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
