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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? delegatedAdminAccountId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? relationshipStatus,
    pulumi.Output<String>? updatedAt,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      delegatedAdminAccountId = pulumi.Input.asOptionalInput<String>(delegatedAdminAccountId),
      region = pulumi.Input.asOptionalInput<String>(region),
      relationshipStatus = pulumi.Input.asOptionalInput<String>(relationshipStatus),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      delegatedAdminAccountId: map['delegatedAdminAccountId'] == null ? null : pulumi.Output.create<String>(map['delegatedAdminAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      relationshipStatus: map['relationshipStatus'] == null ? null : pulumi.Output.create<String>(map['relationshipStatus'] as String),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}

