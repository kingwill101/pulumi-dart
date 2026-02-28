// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_detective_invitation_accepter_invitation_accepter_args_doc}
/// The set of arguments for InvitationAccepter.
/// {@endtemplate}
/// {@macro pulumi_detective_invitation_accepter_invitation_accepter_args_doc}
class InvitationAccepterArgs {
  /// ARN of the behavior graph that the member account is accepting the invitation for.
  final pulumi.Input<String> graphArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [InvitationAccepterArgs].
  /// [graphArn] ARN of the behavior graph that the member account is accepting the invitation for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  InvitationAccepterArgs({
    required String graphArn,
    String? region,
  })  : graphArn = pulumi.Input.asInput<String>(graphArn),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      graphArn: map['graphArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
