// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssmcontacts_get_contact_channel_get_contact_channel_args_doc}
/// Arguments for getContactChannel.
/// {@endtemplate}
/// {@macro pulumi_ssmcontacts_get_contact_channel_get_contact_channel_args_doc}
class GetContactChannelArgs {
  /// Amazon Resource Name (ARN) of the contact channel.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetContactChannelArgs].
  /// [arn] Amazon Resource Name (ARN) of the contact channel.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetContactChannelArgs({
    required this.arn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
    };
  }

  factory GetContactChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetContactChannelArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

