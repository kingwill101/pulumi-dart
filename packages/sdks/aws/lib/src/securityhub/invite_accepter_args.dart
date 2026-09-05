// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityhub_invite_accepter_invite_accepter_args_doc}
/// The set of arguments for InviteAccepter.
/// {@endtemplate}
/// {@macro pulumi_securityhub_invite_accepter_invite_accepter_args_doc}
class InviteAccepterArgs {
  /// The account ID of the master Security Hub account whose invitation you're accepting.
  final pulumi.Input<String> masterId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [InviteAccepterArgs].
  /// [masterId] The account ID of the master Security Hub account whose invitation you're accepting.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const InviteAccepterArgs({
    required this.masterId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'masterId': masterId,
      'region': ?region,
    };
  }

  factory InviteAccepterArgs.fromMap(Map<String, dynamic> map) {
    return InviteAccepterArgs(
      masterId: pulumi.Input.fromValue(map['masterId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
