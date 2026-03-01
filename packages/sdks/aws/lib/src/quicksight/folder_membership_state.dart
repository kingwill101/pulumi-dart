// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FolderMembership resources.
class FolderMembershipState {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Identifier for the folder.
  final pulumi.Input<String>? folderId;
  /// ID of the asset (the dashboard, analysis, or dataset).
  final pulumi.Input<String>? memberId;
  /// Type of the member. Valid values are `ANALYSIS`, `DASHBOARD`, and `DATASET`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? memberType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [FolderMembershipState].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [folderId] Identifier for the folder.
  /// [memberId] ID of the asset (the dashboard, analysis, or dataset).
  /// [memberType] Type of the member. Valid values are `ANALYSIS`, `DASHBOARD`, and `DATASET`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  FolderMembershipState({
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? folderId,
    pulumi.Output<String>? memberId,
    pulumi.Output<String>? memberType,
    pulumi.Output<String>? region,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      folderId = pulumi.Input.asOptionalInput<String>(folderId),
      memberId = pulumi.Input.asOptionalInput<String>(memberId),
      memberType = pulumi.Input.asOptionalInput<String>(memberType),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'folderId': ?folderId,
      'memberId': ?memberId,
      'memberType': ?memberType,
      'region': ?region,
    };
  }

  factory FolderMembershipState.fromMap(Map<String, dynamic> map) {
    return FolderMembershipState(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      folderId: map['folderId'] == null ? null : pulumi.Output.create<String>(map['folderId'] as String),
      memberId: map['memberId'] == null ? null : pulumi.Output.create<String>(map['memberId'] as String),
      memberType: map['memberType'] == null ? null : pulumi.Output.create<String>(map['memberType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

