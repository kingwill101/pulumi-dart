// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for InvitationAccepter.
class InvitationAccepterArgs {
  /// ARN of the behavior graph that the member account is accepting the invitation for.
  final pulumi.Input<String> graphArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  InvitationAccepterArgs({
    required this.graphArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['graphArn'] = graphArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory InvitationAccepterArgs.fromMap(Map<String, dynamic> map) {
    return InvitationAccepterArgs(
      graphArn: pulumi.Input.asInput<String>(map['graphArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
