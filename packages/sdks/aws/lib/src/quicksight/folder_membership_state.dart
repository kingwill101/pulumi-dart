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
    this.awsAccountId,
    this.folderId,
    this.memberId,
    this.memberType,
    this.region,
  });

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
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      folderId: map['folderId'] == null ? null : (map['folderId'] as String).input(),
      memberId: map['memberId'] == null ? null : (map['memberId'] as String).input(),
      memberType: map['memberType'] == null ? null : (map['memberType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

