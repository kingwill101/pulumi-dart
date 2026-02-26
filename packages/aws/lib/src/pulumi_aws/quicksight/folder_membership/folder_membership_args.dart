// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for FolderMembership.
class FolderMembershipArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// Identifier for the folder.
  final Input<String> folderId;

  /// ID of the asset (the dashboard, analysis, or dataset).
  final Input<String> memberId;

  /// Type of the member. Valid values are `ANALYSIS`, `DASHBOARD`, and `DATASET`.
  ///
  /// The following arguments are optional:
  final Input<String> memberType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      folderId: Input.asInput<String>(map['folderId']),
      memberId: Input.asInput<String>(map['memberId']),
      memberType: Input.asInput<String>(map['memberType']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
