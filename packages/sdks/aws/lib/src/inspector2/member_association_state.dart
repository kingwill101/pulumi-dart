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
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      delegatedAdminAccountId: map['delegatedAdminAccountId'] == null ? null : ((map['delegatedAdminAccountId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      relationshipStatus: map['relationshipStatus'] == null ? null : ((map['relationshipStatus'] as String).input()).input(),
      updatedAt: map['updatedAt'] == null ? null : ((map['updatedAt'] as String).input()).input(),
    );
  }
}

