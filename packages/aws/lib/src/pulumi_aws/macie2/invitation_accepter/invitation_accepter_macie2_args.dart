// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InvitationAccepter.
class InvitationAccepterMacie2Args {
  /// The AWS account ID for the account that sent the invitation.
  final pulumi.Input<String> administratorAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  InvitationAccepterMacie2Args({
    required this.administratorAccountId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['administratorAccountId'] = administratorAccountId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InvitationAccepterMacie2Args.fromMap(Map<String, dynamic> map) {
    return InvitationAccepterMacie2Args(
      administratorAccountId:
          pulumi.Input.asInput<String>(map['administratorAccountId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
