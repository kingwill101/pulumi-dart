// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InviteAccepter.
class InviteAccepterSecurityhubArgs {
  /// The account ID of the master Security Hub account whose invitation you're accepting.
  final pulumi.Input<String> masterId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  InviteAccepterSecurityhubArgs({
    required this.masterId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['masterId'] = masterId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InviteAccepterSecurityhubArgs.fromMap(Map<String, dynamic> map) {
    return InviteAccepterSecurityhubArgs(
      masterId: pulumi.Input.asInput<String>(map['masterId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
