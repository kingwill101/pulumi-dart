// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_folder_membership_folder_membership_args_doc}
/// The set of arguments for FolderMembership.
/// {@endtemplate}
/// {@macro pulumi_quicksight_folder_membership_folder_membership_args_doc}
class FolderMembershipArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// Identifier for the folder.
  final pulumi.Input<String> folderId;

  /// ID of the asset (the dashboard, analysis, or dataset).
  final pulumi.Input<String> memberId;

  /// Type of the member. Valid values are `ANALYSIS`, `DASHBOARD`, and `DATASET`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> memberType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [FolderMembershipArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [folderId] Identifier for the folder.
  /// [memberId] ID of the asset (the dashboard, analysis, or dataset).
  /// [memberType] Type of the member. Valid values are `ANALYSIS`, `DASHBOARD`, and `DATASET`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  FolderMembershipArgs({
    String? awsAccountId,
    required String folderId,
    required String memberId,
    required String memberType,
    String? region,
  })  : awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
        folderId = pulumi.Input.asInput<String>(folderId),
        memberId = pulumi.Input.asInput<String>(memberId),
        memberType = pulumi.Input.asInput<String>(memberType),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    map['folderId'] = folderId;
    map['memberId'] = memberId;
    map['memberType'] = memberType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory FolderMembershipArgs.fromMap(Map<String, dynamic> map) {
    return FolderMembershipArgs(
      awsAccountId:
          map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      folderId: map['folderId'] as String,
      memberId: map['memberId'] as String,
      memberType: map['memberType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
