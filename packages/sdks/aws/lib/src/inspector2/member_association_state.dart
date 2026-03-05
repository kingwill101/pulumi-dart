// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MemberAssociation resources.
class MemberAssociationState {
  /// ID of the account to associate
  final pulumi.Input<String>? accountId;
  /// Account ID of the delegated administrator account
  final pulumi.Input<String>? delegatedAdminAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of the member relationship
  final pulumi.Input<String>? relationshipStatus;
  /// Date and time of the last update of the relationship
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [MemberAssociationState].
  /// [accountId] ID of the account to associate
  /// [delegatedAdminAccountId] Account ID of the delegated administrator account
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relationshipStatus] Status of the member relationship
  /// [updatedAt] Date and time of the last update of the relationship
  MemberAssociationState({
    this.accountId,
    this.delegatedAdminAccountId,
    this.region,
    this.relationshipStatus,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'delegatedAdminAccountId': ?delegatedAdminAccountId,
      'region': ?region,
      'relationshipStatus': ?relationshipStatus,
      'updatedAt': ?updatedAt,
    };
  }

  factory MemberAssociationState.fromMap(Map<String, dynamic> map) {
    return MemberAssociationState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      delegatedAdminAccountId: (() { final guardedValue = map['delegatedAdminAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relationshipStatus: (() { final guardedValue = map['relationshipStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

