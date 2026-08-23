// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_role_association_timeouts.dart';

/// Input properties used for looking up and filtering IamRoleAssociation resources.
class IamRoleAssociationState {
  /// AWS integration configuration for the IAM role association. Valid value: `KmsTde`.
  final pulumi.Input<String>? awsIntegration;
  /// IAM role ARN to associate.
  final pulumi.Input<String>? iamRoleArn;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Oracle Database@AWS resource ARN to associate the IAM role with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? resourceArn;
  /// Current IAM role association status.
  final pulumi.Input<String>? status;
  /// Additional details about the current status, when available.
  final pulumi.Input<String>? statusReason;
  final pulumi.Input<IamRoleAssociationTimeouts>? timeouts;

  /// Creates a new [IamRoleAssociationState].
  /// [awsIntegration] AWS integration configuration for the IAM role association. Valid value: `KmsTde`.
  /// [iamRoleArn] IAM role ARN to associate.
  /// [region] Region where this resource is managed. Defaults to the Region set in the provider configuration.
  /// [resourceArn] Oracle Database@AWS resource ARN to associate the IAM role with.
  /// [status] Current IAM role association status.
  /// [statusReason] Additional details about the current status, when available.
  /// [timeouts] Optional.
  const IamRoleAssociationState({
    this.awsIntegration,
    this.iamRoleArn,
    this.region,
    this.resourceArn,
    this.status,
    this.statusReason,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsIntegration': ?awsIntegration,
      'iamRoleArn': ?iamRoleArn,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'status': ?status,
      'statusReason': ?statusReason,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<IamRoleAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory IamRoleAssociationState.fromMap(Map<String, dynamic> map) {
    return IamRoleAssociationState(
      awsIntegration: (() { final guardedValue = map['awsIntegration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IamRoleAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
