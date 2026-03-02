// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_inspector2_member_association_member_association_args_doc}
/// The set of arguments for MemberAssociation.
/// {@endtemplate}
/// {@macro pulumi_inspector2_member_association_member_association_args_doc}
class MemberAssociationArgs {
  /// ID of the account to associate
  final pulumi.Input<String> accountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [MemberAssociationArgs].
  /// [accountId] ID of the account to associate
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MemberAssociationArgs({
    required this.accountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'region': ?region,
    };
  }

  factory MemberAssociationArgs.fromMap(Map<String, dynamic> map) {
    return MemberAssociationArgs(
      accountId: (map['accountId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

