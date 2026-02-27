// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for FolderMembership.
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

  FolderMembershipArgs({
    this.awsAccountId,
    required this.folderId,
    required this.memberId,
    required this.memberType,
    this.region,
  });

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
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      folderId: pulumi.Input.asInput<String>(map['folderId']),
      memberId: pulumi.Input.asInput<String>(map['memberId']),
      memberType: pulumi.Input.asInput<String>(map['memberType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
