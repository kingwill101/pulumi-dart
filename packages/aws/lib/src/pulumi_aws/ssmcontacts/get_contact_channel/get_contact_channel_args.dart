// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getContactChannel.
class GetContactChannelArgs {
  /// Amazon Resource Name (ARN) of the contact channel.
  final Input<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetContactChannelArgs({
    required this.arn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetContactChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetContactChannelArgs(
      arn: Input.asInput<String>(map['arn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
