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
    pulumi.Output<String>? awsAccountId,
    required pulumi.Output<String> folderId,
    required pulumi.Output<String> memberId,
    required pulumi.Output<String> memberType,
    pulumi.Output<String>? region,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      folderId = pulumi.Input.asInput<String>(folderId),
      memberId = pulumi.Input.asInput<String>(memberId),
      memberType = pulumi.Input.asInput<String>(memberType),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'folderId': folderId,
      'memberId': memberId,
      'memberType': memberType,
      'region': ?region,
    };
  }

  factory FolderMembershipArgs.fromMap(Map<String, dynamic> map) {
    return FolderMembershipArgs(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      folderId: pulumi.Output.create<String>(map['folderId'] as String),
      memberId: pulumi.Output.create<String>(map['memberId'] as String),
      memberType: pulumi.Output.create<String>(map['memberType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

