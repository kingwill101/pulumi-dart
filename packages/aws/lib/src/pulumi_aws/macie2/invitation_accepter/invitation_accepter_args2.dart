// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InvitationAccepter.
class InvitationAccepterArgs2 {
  /// The AWS account ID for the account that sent the invitation.
  final Input<String> administratorAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  InvitationAccepterArgs2({
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

  factory InvitationAccepterArgs2.fromMap(Map<String, dynamic> map) {
    return InvitationAccepterArgs2(
      administratorAccountId:
          Input.asInput<String>(map['administratorAccountId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
