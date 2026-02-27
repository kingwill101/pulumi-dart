// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MemberAssociation.
class MemberAssociationArgs {
  /// ID of the account to associate
  final pulumi.Input<String> accountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  MemberAssociationArgs({
    required this.accountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory MemberAssociationArgs.fromMap(Map<String, dynamic> map) {
    return MemberAssociationArgs(
      accountId: pulumi.Input.asInput<String>(map['accountId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
